const std = @import("std");

const bx = @import("build_bx.zig");
const bimg = @import("build_bimg.zig");

const bgfx_path = "3rdparty/bgfx/";

var framework_dir: ?[]u8 = null;

pub fn link(exe: *std.build.LibExeObjStep) void {
    const lib = buildLibrary(exe);
    addBgfxIncludes(exe);
    exe.linkLibrary(lib);
}

fn buildLibrary(exe: *std.build.LibExeObjStep) *std.build.LibExeObjStep {
    const cxx_options = [_][]const u8{
        "-fno-strict-aliasing",
        "-fno-exceptions",
        "-fno-rtti",
        "-ffast-math",
        "-DBX_CONFIG_DEBUG",
        "-DBGFX_CONFIG_USE_TINYSTL=0",
    };

    const bgfx_lib = exe.builder.addStaticLibrary("bgfx", null);

    bgfx_lib.setTarget(exe.target);
    bgfx_lib.setBuildMode(exe.build_mode);

    bgfx_lib.addIncludeDir(bgfx_path ++ "include/");
    bgfx_lib.addIncludeDir(bgfx_path ++ "3rdparty/");
    bgfx_lib.addIncludeDir(bgfx_path ++ "3rdparty/dxsdk/include/");
    bgfx_lib.addIncludeDir(bgfx_path ++ "3rdparty/khronos/");
    bgfx_lib.addIncludeDir(bgfx_path ++ "src/");

    if (bgfx_lib.target.isDarwin()) {
        bgfx_lib.addCSourceFile(bgfx_path ++ "src/amalgamated.mm", &cxx_options);
        // const frameworks_dir = macosFrameworksDir(exe) catch unreachable;
        // exe.addFrameworkDir(frameworks_dir);
        // std.debug.print("Added framework dir: {s}\n", .{framework_dir});
        bgfx_lib.linkFramework("Foundation");
        bgfx_lib.linkFramework("CoreFoundation");
        bgfx_lib.linkFramework("Cocoa");
        bgfx_lib.linkFramework("QuartzCore");
    } else {
        bgfx_lib.addCSourceFile(bgfx_path ++ "src/amalgamated.cpp", &cxx_options);
    }

    bgfx_lib.want_lto = false;
    bgfx_lib.linkSystemLibrary("c");
    bgfx_lib.linkSystemLibrary("c++");
    bx.link(bgfx_lib);
    bimg.link(bgfx_lib);

    bgfx_lib.install();

    return bgfx_lib;
}

fn addBgfxIncludes(exe: *std.build.LibExeObjStep) void {
    exe.addIncludeDir(thisDir() ++ "/" ++ bgfx_path ++ "include/");
    exe.addPackagePath("bgfx", thisDir() ++ "/" ++ bgfx_path ++ "bindings/zig/bgfx.zig");
}

fn thisDir() []const u8 {
    return std.fs.path.dirname(@src().file) orelse ".";
}

// /// helper function to get SDK path on Mac
// fn macosFrameworksDir(exe: *std.build.LibExeObjStep) ![]u8 {
//     if (framework_dir) |dir| return dir;

//     var str = try exe.builder.exec(&[_][]const u8{ "xcrun", "--show-sdk-path" });
//     const strip_newline = std.mem.lastIndexOf(u8, str, "\n");
//     if (strip_newline) |index| {
//         str = str[0..index];
//     }
//     framework_dir = try std.mem.concat(exe.builder.allocator, u8, &[_][]const u8{ str, "/System/Library/Frameworks" });
//     return framework_dir.?;
// }
