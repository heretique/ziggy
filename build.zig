const std = @import("std");

const bx = @import("build_bx.zig");
const bimg = @import("build_bimg.zig");
const bgfx = @import("build_bgfx.zig");
const sc = @import("build_shader_compiler.zig");
const tp = @import("build_texture_packer.zig");

const zigstr = @import("build_zigstr.zig");
const zmath = @import("3rdparty/zmath/build.zig");
const zgui = @import("3rdparty/zgui/build.zig");

const LibExeObjStep = std.build.LibExeObjStep;
const Builder = std.build.Builder;
const CrossTarget = std.zig.CrossTarget;
const Pkg = std.build.Pkg;

pub fn build(b: *Builder) void {
    // Standard target options allows the person running `zig build` to choose
    // what target to build for. Here we do not override the defaults, which
    // means any target is allowed, and the default is native. Other options
    // for restricting supported target set are available.
    const target = b.standardTargetOptions(.{});

    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();

    // EXE
    const exe = b.addExecutable("ziggy", "src/main.zig");
    exe.setTarget(target);
    exe.setBuildMode(mode);

    // sdl2
    if (target.isDarwin()){
        exe.addFrameworkPath("3rdparty/sdl2/osx");
        exe.linkFramework("sdl2");
        exe.linkFramework("Foundation");
        exe.linkFramework("CoreFoundation");
        exe.linkFramework("Cocoa");
        exe.linkFramework("QuartzCore");
        exe.linkFramework("OpenGL");
        exe.linkFramework("IOKit");
        exe.linkFramework("Metal");
    }
    else if (target.isWindows()) {
        exe.addIncludePath("3rdparty/sdl2/windows/include");
        exe.addLibraryPath("3rdparty/sdl2/windows/win64");
        exe.linkSystemLibrary("sdl2");
        exe.linkSystemLibrary("opengl32");
        exe.linkSystemLibrary("gdi32");
        exe.linkSystemLibrary("winmm");
        exe.linkSystemLibrary("setupapi");
        exe.linkSystemLibrary("ole32");
        exe.linkSystemLibrary("oleaut32");
        exe.linkSystemLibrary("imm32");
        exe.linkSystemLibrary("version");
    }

    // zmath
    exe.addPackage(zmath.pkg);

    bx.link(exe);
    bimg.link(exe);
    bgfx.link(exe);
    zigstr.link(exe);

    // zgui
    const zgui_options = zgui.BuildOptionsStep.init(b, .{ .backend = .no_backend });
    const zgui_pkg = zgui.getPkg(&.{zgui_options.getPkg()});
    exe.addPackage(zgui_pkg);
    zgui.link(exe, zgui_options);

    exe.linkSystemLibrary("c");
    exe.linkSystemLibrary("c++");
    exe.install();

    // shader compiler
    _ = sc.build(b, target, mode);

    // texture packer
    _ = tp.build(b, target, mode);

    const run_cmd = exe.run();
    run_cmd.step.dependOn(b.getInstallStep());
    if (b.args) |args| {
        run_cmd.addArgs(args);
    }

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);

    const exe_tests = b.addTest("src/main.zig");
    exe_tests.setTarget(target);
    exe_tests.setBuildMode(mode);

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&exe_tests.step);
}

inline fn thisDir() []const u8 {
    return comptime std.fs.path.dirname(@src().file) orelse ".";
}
