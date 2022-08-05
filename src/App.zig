const Self = @This();

const std = @import("std");
const assert = std.debug.assert;

const InitFn = fn (*anyopaque) anyerror!void;
const UpdateFn = fn (*anyopaque, f32) anyerror!void;
const ShutdownFn = fn (*anyopaque) void;

ptr: *anyopaque,
initFn: InitFn,
updateFn: UpdateFn,
// TODO define handleInputFn and InputEvent
shutdownFn: ShutdownFn,

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
            try @call(.{ .modifier = .always_inline }, ptr_info.Pointer.child.init, .{self});
        }
        pub fn updateImpl(pointer: *anyopaque, dt: f32) !void {
            const self = @ptrCast(Ptr, @alignCast(alignment, pointer));
            try @call(.{ .modifier = .always_inline }, ptr_info.Pointer.child.update, .{ self, dt });
        }
        pub fn shutdownImpl(pointer: *anyopaque) void {
            const self = @ptrCast(Ptr, @alignCast(alignment, pointer));
            return @call(.{ .modifier = .always_inline }, ptr_info.Pointer.child.shutdown, .{self});
        }
    };

    return .{
        .ptr = ptr,
        .initFn = gen.initImpl,
        .updateFn = gen.updateImpl,
        .shutdownFn = gen.shutdownImpl,
    };
}

pub inline fn init(self: Self) !void {
    try self.initFn(self.ptr);
}

pub inline fn update(self: Self, dt: f32) !void {
    try self.updateFn(self.ptr, dt);
}

pub inline fn shutdown(self: Self) void {
    self.shutdownFn(self.ptr);
}
