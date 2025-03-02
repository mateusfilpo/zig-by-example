const expect = @import("std").testing.expect;

test "error union" {
    var foo: anyerror!i32 = undefined;

    foo = 1234;

    foo = error.SomeError;

    try comptime expect(@typeInfo(@TypeOf(foo)).error_union.payload == i32);

    try comptime expect(@typeInfo(@TypeOf(foo)).error_union.error_set == anyerror);
}
