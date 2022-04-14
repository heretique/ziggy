const c = @cImport({
    @cInclude("SDL2/SDL.h");
    @cInclude("SDL2/SDL_syswm.h");
});

const std = @import("std");
const print = std.debug.print;
const assert = std.debug.assert;
const panic = std.debug.panic;
const bgfx = @import("bgfx");

const zigstr = @import("zigstr");

const WIDTH = 1280;
const HEIGHT = 720;

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

        _ = bgfx.bgfx_vertex_layout_begin(&L.posColorLayout, bgfx.RendererType.Noop);
        _ = bgfx.bgfx_vertex_layout_add(&L.posColorLayout, bgfx.Attrib.Position, 3, bgfx.AttribType.Float, false, false);
        _ = bgfx.bgfx_vertex_layout_add(&L.posColorLayout, bgfx.Attrib.Color0, 4, bgfx.AttribType.Uint8, true, false);
        _ = bgfx.bgfx_vertex_layout_end(&L.posColorLayout);

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

    const success = bgfx.bgfx_init(&bgfxInit);
    defer bgfx.bgfx_shutdown();
    assert(success);

    // Enable debug text.
    bgfx.bgfx_set_debug(bgfx.DebugFlags_Text);
    // Set view 0 clear state.
    bgfx.bgfx_set_view_clear(0, bgfx.ClearFlags_Color | bgfx.ClearFlags_Depth, 0x303030ff, 1.0, 0);

    const vertex_layout = PosColorVertex.layoutInit();
    const vbh = bgfx.bgfx_create_vertex_buffer(bgfx.bgfx_make_ref(&cube_vertices, cube_vertices.len * @sizeOf(PosColorVertex)), &vertex_layout, bgfx.BufferFlags_None);
    _ = vbh;
    // const ibh = bgfx.bgfx_create_inde

    var quit = false;
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

        bgfx.bgfx_set_view_rect(0, 0, 0, WIDTH, HEIGHT);
        bgfx.bgfx_touch(0);
        bgfx.bgfx_dbg_text_clear(0, false);

        bgfx.bgfx_dbg_text_printf(0, 1, 0x0f, "Color can be changed with ANSI \x1b[9;me\x1b[10;ms\x1b[11;mc\x1b[12;ma\x1b[13;mp\x1b[14;me\x1b[0m code too.");
        bgfx.bgfx_dbg_text_printf(80, 1, 0x0f, "\x1b[;0m    \x1b[;1m    \x1b[; 2m    \x1b[; 3m    \x1b[; 4m    \x1b[; 5m    \x1b[; 6m    \x1b[; 7m    \x1b[0m");
        bgfx.bgfx_dbg_text_printf(80, 2, 0x0f, "\x1b[;8m    \x1b[;9m    \x1b[;10m    \x1b[;11m    \x1b[;12m    \x1b[;13m    \x1b[;14m    \x1b[;15m    \x1b[0m");
        var stats = bgfx.bgfx_get_stats();
        bgfx.bgfx_dbg_text_printf(0, 2, 0x0f, "Backbuffer %dW x %dH in pixels, debug text %dW x %dH in characters.", stats.*.width, stats.*.height, stats.*.textWidth, stats.*.textHeight);

        _ = bgfx.bgfx_frame(false);

        c.SDL_Delay(17);
    }
}
