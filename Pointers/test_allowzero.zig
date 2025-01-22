const std = @import("std");
const expect = std.testing.expect;

test "allowzero" {
    var zero: usize = 0;
    _ = &zero;
    const ptr: *allowzero i32 = @ptrFromInt(zero);
    try expect(@intFromPtr(ptr) == 0);
}
