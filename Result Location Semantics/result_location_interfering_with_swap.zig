const expect = @import("std").testing.expect;
test "attempt to swap array elements with array initializer" {
    var arr: [2]u32 = .{ 1, 2 };
    arr = .{ arr[1], arr[0] };
    try expect(arr[0] == 2);
    try expect(arr[1] == 1);
}
