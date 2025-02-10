const std = @import("std");

test "switch continue" {
    sw: switch (@as(i32, 5)) {
        5 => continue :sw 4,

        2...4 => |v| {
            if (v > 3) {
                continue :sw 2;
            } else if (v == 3) {
                break :sw;
            }

            continue :sw 1;
        },

        1 => return,

        else => unreachable,
    }
}
