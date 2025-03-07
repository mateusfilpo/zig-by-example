const expect = @import("std").testing.expect;

test "optional pointers" {
    var ptr: ?*i32 = null;

    var x: i32 = 1;
    ptr = &x;

    try expect(ptr.?.* == 1);

    try expect(@sizeOf(?*i32) == @sizeOf(*i32));
}
