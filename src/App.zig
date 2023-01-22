const Self = @This();

const std = @import("std");
const assert = std.debug.assert;
const BGFXWIndow = @import("BGFXWindow.zig");

// TODO get rid of SDL here and wrap entirely within BGFXWindow
// TODO implement and "App" interface
const c = @cImport({
    @cInclude("SDL2/SDL.h");
});

const InitFn = *const fn (*anyopaque) anyerror!void;
const UpdateFn = *const fn (*anyopaque, f32) anyerror!bool;
const ShutdownFn = *const fn (*anyopaque) void;

ptr: *anyopaque,
initFn: InitFn,
updateFn: UpdateFn,
// TODO define handleInputFn and InputEvent
shutdownFn: ShutdownFn,

window: BGFXWIndow = undefined,

pub fn makeImpl(ptr: anytype) Self {
    const Ptr = @TypeOf(ptr);
    const ptr_info = @typeInfo(Ptr);
    assert(@typeInfo(Ptr) == .Pointer); // Must be a pointer
    assert(@typeInfo(Ptr).Pointer.size == .One); // Must be a single-item pointer
    assert(@typeInfo(ptr_info.Pointer.child) == .Struct); // Must point to a struct
    const alignment = ptr_info.Pointer.alignment;

    const gen = struct {
        pub fn initImpl(pointer: *anyopaque) !void {
            const self = @ptrCast(Ptr, @alignCast(alignment, pointer));
            try @call(.always_inline, ptr_info.Pointer.child.init, .{self});
        }
        pub fn updateImpl(pointer: *anyopaque, dt: f32) !bool {
            const self = @ptrCast(Ptr, @alignCast(alignment, pointer));
            return try @call(.always_inline, ptr_info.Pointer.child.update, .{ self, dt });
        }
        pub fn shutdownImpl(pointer: *anyopaque) void {
            const self = @ptrCast(Ptr, @alignCast(alignment, pointer));
            return @call(.always_inline, ptr_info.Pointer.child.shutdown, .{self});
        }
    };

    return .{
        .ptr = ptr,
        .initFn = gen.initImpl,
        .updateFn = gen.updateImpl,
        .shutdownFn = gen.shutdownImpl,
        .window = undefined,
    };
}

pub fn run(self: *Self) !void {
    errdefer self.shutdown();

    var quit = false;
    main: while (!quit) {
        var event: c.SDL_Event = undefined;
        while (c.SDL_PollEvent(&event) != 0) {
            switch (event.@"type") {
                c.SDL_QUIT => {
                    quit = true;
                    break :main;
                },
                else => {
                    // _ = self.window.handleSDLInputEvent(&event);
                },
            }
        }

        // self.window.newFrame();

        quit = try self.update(17);

        c.SDL_Delay(17);
    }
    self.shutdown();
}

pub fn init(self: *Self, title: [:0]const u8, x: ?u32, y: ?u32, width: u32, height: u32) !void {
    self.window = try BGFXWIndow.makeWindow(title, x, y, width, height);
    try self.initFn(self.ptr);
}

inline fn update(self: Self, dt: f32) !bool {
    return try self.updateFn(self.ptr, dt);
}

fn shutdown(self: *Self) void {
    self.window.deinit();
    self.shutdownFn(self.ptr);
}
