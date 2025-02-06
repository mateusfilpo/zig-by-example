const std = @import("std");
const expect = std.testing.expect;

test "test empty block" {
    const a = {};
    const b = void{};
    try expect(@TypeOf(a) == void);
    try expect(@TypeOf(b) == void);
    try expect(a == b);
}
