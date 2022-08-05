const BGFXWIndow = @import("BGFXWindow.zig");

const std = @import("std");
const bgfx = @import("bgfx");

const App = @import("App.zig");

// TODO get rid of SDL here and wrap entirely within BGFXWindow
// TODO implement and "App" interface
const c = @cImport({
    @cInclude("SDL2/SDL.h");
});

const WIDTH = 1280;
const HEIGHT = 720;

const TexturePackerApp = struct {
    const Self = @This();

    empty: bool = false,

    pub fn app(self: *Self) App {
        return App.makeImpl(self);
    }

    pub fn init(self: *Self) !void {
        _ = self;
        // Enable debug text.
        bgfx.setDebug(bgfx.DebugFlags_Text);
        // Set view 0 clear state.
        bgfx.setViewClear(0, bgfx.ClearFlags_Color | bgfx.ClearFlags_Depth, 0x303030ff, 1.0, 0);
        std.debug.print("Initialized app...", .{});
    }

    pub fn update(self: *Self, dt: f32) !void {
        _ = self;
        _ = dt;

        bgfx.setViewRect(0, 0, 0, WIDTH, HEIGHT);
        bgfx.touch(0);
        _ = bgfx.frame(false);
    }

    pub fn shutdown(self: *Self) void {
        _ = self;
        std.debug.print("Shutting down...", .{});
    }
};

pub fn main() !void {
    var window = try BGFXWIndow.makeWindow("Texture Packer", undefined, undefined, WIDTH, HEIGHT);
    defer window.deinit();

    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    _ = allocator;

    var texturePackerApp = TexturePackerApp{};
    var app = texturePackerApp.app();

    try app.init();

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

        try app.update(17);

        c.SDL_Delay(17);
    }

    app.shutdown();
}
