const std = @import("std");
const App = @import("App.zig");
const bgfx = @import("bgfx");

const WIDTH = 1280;
const HEIGHT = 720;

const TexturePackerApp = struct {
    const Self = @This();

    // added so Zig doesn't complain about '*TexturePackerApp' has no in-memory bits
    _: bool = false,

    pub fn app(self: *Self) App {
        return App.makeImpl(self);
    }

    pub fn init(self: *Self) !void {
        _ = self;
        // Enable debug text.
        bgfx.setDebug(bgfx.DebugFlags_Text);
        // Set view 0 clear state.
        bgfx.setViewClear(0, bgfx.ClearFlags_Color | bgfx.ClearFlags_Depth, 0x303030ff, 1.0, 0);
        std.debug.print("Initialized app...\n", .{});
    }

    // return true to quit
    pub fn update(self: *Self, dt: f32) !bool {
        _ = self;
        _ = dt;

        bgfx.setViewRect(0, 0, 0, WIDTH, HEIGHT);
        bgfx.touch(0);
        _ = bgfx.frame(false);

        return false;
    }

    pub fn shutdown(self: *Self) void {
        _ = self;
        std.debug.print("Shutting down...\n", .{});
    }
};

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    _ = allocator;

    var texturePackerApp = TexturePackerApp{};
    var app = texturePackerApp.app();

    try app.init("Texture Packer", undefined, undefined, WIDTH, HEIGHT);
    try app.run();
}
