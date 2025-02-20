const std = @import("std");
const expect = std.testing.expect;
const print = std.debug.print;

test "defer unwinding" {
    print("\n", .{});

    defer {
        print("1 ", .{});
    }
    defer {
        print("2", .{});
    }
    if (false) {
        defer {
            print("3", .{});
        }
    }
}
