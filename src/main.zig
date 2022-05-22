const c = @cImport({
    @cInclude("SDL2/SDL.h");
    @cInclude("SDL2/SDL_syswm.h");
});

const std = @import("std");
const math = std.math;
const print = std.debug.print;
const assert = std.debug.assert;
const panic = std.debug.panic;
const bgfx = @import("bgfx");

const zigstr = @import("zigstr");
const zm = @import("zmath");

const WIDTH = 1280;
const HEIGHT = 720;

const aspect_ratio = @intToFloat(f32, WIDTH) / HEIGHT;

const PosColorVertex = struct {
    x: f32,
    y: f32,
    z: f32,
    abgr: u32,

    fn init(x: f32, y: f32, z: f32, abgr: u32) PosColorVertex {
        return .{
            .x = x,
            .y = y,
            .z = z,
            .abgr = abgr,
        };
    }

    fn layoutInit() bgfx.VertexLayout {
        // static local
        const L = struct {
            var posColorLayout = std.mem.zeroes(bgfx.VertexLayout);
        };

        L.posColorLayout.begin(bgfx.RendererType.Noop)
            .add(bgfx.Attrib.Position, 3, bgfx.AttribType.Float, false, false)
            .add(bgfx.Attrib.Color0, 4, bgfx.AttribType.Uint8, true, false)
            .end();

        return L.posColorLayout;
    }
};

const cube_vertices = [_]PosColorVertex{
    PosColorVertex.init(-1.0, 1.0, 1.0, 0xff000000),
    PosColorVertex.init(1.0, 1.0, 1.0, 0xff0000ff),
    PosColorVertex.init(-1.0, -1.0, 1.0, 0xff00ff00),
    PosColorVertex.init(1.0, -1.0, 1.0, 0xff00ffff),
    PosColorVertex.init(-1.0, 1.0, -1.0, 0xffff0000),
    PosColorVertex.init(1.0, 1.0, -1.0, 0xffff00ff),
    PosColorVertex.init(-1.0, -1.0, -1.0, 0xffffff00),
    PosColorVertex.init(1.0, -1.0, -1.0, 0xffffffff),
};

const cube_tri_list = [_]u16{
    0, 1, 2, // 0
    1, 3, 2,
    4, 6, 5, // 2
    5, 6, 7,
    0, 2, 4, // 4
    4, 2, 6,
    1, 5, 3, // 6
    5, 7, 3,
    0, 4, 1, // 8
    4, 5, 1,
    2, 3, 6, // 10
    6, 3, 7,
};

pub fn main() !void {
    if (c.SDL_Init(c.SDL_INIT_VIDEO | c.SDL_INIT_EVENTS | c.SDL_INIT_AUDIO) != 0) {
        c.SDL_Log("Unable to initialize SDL: %s", c.SDL_GetError());
        return error.SDLInitializationFailed;
    }
    defer c.SDL_Quit();

    var window = c.SDL_CreateWindow("test", c.SDL_WINDOWPOS_UNDEFINED, c.SDL_WINDOWPOS_UNDEFINED, WIDTH, HEIGHT, c.SDL_WINDOW_SHOWN | c.SDL_WINDOW_OPENGL | c.SDL_WINDOW_ALLOW_HIGHDPI) orelse
        {
        c.SDL_Log("Unable to create window: %s", c.SDL_GetError());
        return error.SDLInitializationFailed;
    };

    defer _ = c.SDL_DestroyWindow(window);

    const test_allocator = std.testing.allocator;

    var bgfxInit = std.mem.zeroes(bgfx.Init);
    bgfxInit.type = bgfx.RendererType.OpenGL;
    bgfxInit.resolution.width = WIDTH;
    bgfxInit.resolution.height = HEIGHT;
    bgfxInit.limits.transientIbSize = 1 << 20;
    bgfxInit.limits.transientVbSize = 1 << 20;
    bgfxInit.debug = true;

    var wmi = std.mem.zeroes(c.SDL_SysWMinfo);
    _ = c.SDL_GetWindowWMInfo(window, &wmi);

    bgfxInit.platformData.nwh = wmi.info.win.window;

    const success = bgfx.init(&bgfxInit);
    defer bgfx.shutdown();
    assert(success);

    // Enable debug text.
    bgfx.setDebug(bgfx.DebugFlags_Text);
    // Set view 0 clear state.
    bgfx.setViewClear(0, bgfx.ClearFlags_Color | bgfx.ClearFlags_Depth, 0x303030ff, 1.0, 0);

    const vertex_layout = PosColorVertex.layoutInit();
    const vbh = bgfx.createVertexBuffer(bgfx.makeRef(&cube_vertices, cube_vertices.len * @sizeOf(PosColorVertex)), &vertex_layout, bgfx.BufferFlags_None);
    defer bgfx.destroyVertexBuffer(vbh);

    const ibh = bgfx.createIndexBuffer(bgfx.makeRef(&cube_tri_list, cube_tri_list.len * @sizeOf(u16)), bgfx.BufferFlags_None);
    defer bgfx.destroyIndexBuffer(ibh);

    const vertex_shader_file = try std.fs.cwd().openFile("vs_cubes.bin", .{});
    const vertex_shader_buffer = try vertex_shader_file.readToEndAlloc(test_allocator, 1024 * 1024);
    defer test_allocator.free(vertex_shader_buffer);
    vertex_shader_file.close();
    const vsh = bgfx.createShader(bgfx.makeRef(vertex_shader_buffer.ptr, @intCast(u32, vertex_shader_buffer.len)));
    assert(vsh.idx != std.math.maxInt(c_ushort));

    const fragment_shader_file = try std.fs.cwd().openFile("fs_cubes.bin", .{});
    const fragment_shader_buffer = try fragment_shader_file.readToEndAlloc(test_allocator, 1024 * 1024);
    defer test_allocator.free(fragment_shader_buffer);
    fragment_shader_file.close();
    const fsh = bgfx.createShader(bgfx.makeRef(fragment_shader_buffer.ptr, @intCast(u32, fragment_shader_buffer.len)));
    assert(fsh.idx != std.math.maxInt(c_ushort));
    const programHandle = bgfx.createProgram(vsh, fsh, true);
    defer bgfx.destroyProgram(programHandle);


    const viewMtx = zm.lookAtRh(
        zm.f32x4(0.0, 0.0, -50.0, 1.0),
        zm.f32x4(0.0, 0.0, 0.0, 1.0),
        zm.f32x4(0.0, 1.0, 0.0, 0.0));
    
    const projMtx = zm.perspectiveFovRhGl(0.25 * math.pi, aspect_ratio, 0.1, 100.0);
    const state = 0 
        | bgfx.StateFlags_WriteRgb
        | bgfx.StateFlags_WriteA
        | bgfx.StateFlags_WriteZ
        | bgfx.StateFlags_DepthTestLess
        | bgfx.StateFlags_CullCcw
        | bgfx.StateFlags_Msaa
        ;

    var quit = false;
    var time:f32 = 1.0;
    while (!quit) {
        var event: c.SDL_Event = undefined;
        while (c.SDL_PollEvent(&event) != 0) {
            switch (event.@"type") {
                c.SDL_QUIT => {
                    quit = true;
                },
                else => {},
            }
        }

        bgfx.setViewTransform(0, zm.asFloats(&viewMtx), zm.asFloats(&projMtx));
        bgfx.setViewRect(0, 0, 0, WIDTH, HEIGHT);
        bgfx.touch(0);
        bgfx.dbgTextClear(0, false);

        var yy:f32 = 0;
        time += 1;
        while(yy < 11):(yy += 1.0) {
            var xx:f32 = 0;
            while(xx < 11):(xx += 1.0) {
                const trans = zm.translation(-15.0 + xx * 3.0, -15 + yy * 3.0, 0.0);
                const rotX = zm.rotationX((time + xx * 21) * 0.01);
                const rotY = zm.rotationY((time + yy * 37) * 0.01);
                const rotXY = zm.mul(rotX, rotY);
                const modelMtx = zm.mul(rotXY, trans);
                _ = bgfx.setTransform(zm.asFloats(&modelMtx), 1);
                bgfx.setVertexBuffer(0, vbh, 0, cube_vertices.len);
                bgfx.setIndexBuffer(ibh, 0, cube_tri_list.len);
                bgfx.setState(state, 0);
                bgfx.submit(0, programHandle, 0, 255);
            }
        }

        _ = bgfx.frame(false);

        c.SDL_Delay(17);
    }
}
