const expect = @import("std").testing.expect;

test "optional type" {
    var foo: ?i32 = null;

    foo = 1234;

    try comptime expect(@typeInfo(@TypeOf(foo)).optional.child == i32);
}
