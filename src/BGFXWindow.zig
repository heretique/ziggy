const Self = @This();

const std = @import("std");
const bgfx = @import("bgfx");
const builtin = @import("builtin");

const c = @cImport({
    @cInclude("SDL2/SDL.h");
    @cInclude("SDL2/SDL_syswm.h");
});

// SDL window
window: ?*c.SDL_Window,

pub fn makeWindow(title: [:0]const u8, x: ?u32, y: ?u32, width: u32, height: u32) !Self {
    if (c.SDL_Init(c.SDL_INIT_VIDEO | c.SDL_INIT_EVENTS | c.SDL_INIT_AUDIO) != 0) {
        c.SDL_Log("Unable to initialize SDL: %s", c.SDL_GetError());
        return error.SDLInitializationFailed;
    }

    var window = c.SDL_CreateWindow(title.ptr, @intCast(c_int, x orelse c.SDL_WINDOWPOS_UNDEFINED), @intCast(c_int, y orelse c.SDL_WINDOWPOS_UNDEFINED), @intCast(c_int, width), @intCast(c_int, height), c.SDL_WINDOW_SHOWN | c.SDL_WINDOW_OPENGL | c.SDL_WINDOW_ALLOW_HIGHDPI) orelse
        {
        c.SDL_Log("Unable to create window: %s", c.SDL_GetError());
        return error.SDLInitializationFailed;
    };

    var bgfxInit = std.mem.zeroes(bgfx.Init);
    bgfxInit.type = bgfx.RendererType.OpenGL;
    bgfxInit.resolution.width = width;
    bgfxInit.resolution.height = height;
    bgfxInit.limits.transientIbSize = 1 << 20;
    bgfxInit.limits.transientVbSize = 1 << 20;
    bgfxInit.debug = true;

    var wmi = std.mem.zeroes(c.SDL_SysWMinfo);
    _ = c.SDL_GetWindowWMInfo(window, &wmi);

    if (builtin.target.isDarwin()) {
        bgfxInit.platformData.nwh = wmi.info.cocoa.window;
    } else if (builtin.target.os.tag == .windows) {
        bgfxInit.platformData.nwh = wmi.info.win.window;
    }

    const success = bgfx.init(&bgfxInit);
    if (!success) {
        return error.BGFXInitializationFailed;
    }

    return Self{
        .window = window,
    };
}

pub fn deinit(self: Self) void {
    bgfx.shutdown();
    c.SDL_DestroyWindow(self.window);
    c.SDL_Quit();
}
