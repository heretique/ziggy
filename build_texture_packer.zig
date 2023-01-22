const std = @import("std");

const bx = @import("build_bx.zig");
const bimg = @import("build_bimg.zig");
const bgfx = @import("build_bgfx.zig");

const zigstr = @import("build_zigstr.zig");
const zmath = @import("3rdparty/zmath/build.zig");
const zgui = @import("3rdparty/zgui/build.zig");

const LibExeObjStep = std.build.LibExeObjStep;
const Builder = std.build.Builder;
const CrossTarget = std.zig.CrossTarget;
const Pkg = std.build.Pkg;

pub fn build(b: *Builder, target: std.zig.CrossTarget, build_mode: std.builtin.Mode) *std.build.LibExeObjStep {
    const exe = b.addExecutable("texture_packer", "src/texture_packer.zig");

    exe.setTarget(target);
    exe.setBuildMode(build_mode);

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
    return exe;
}
