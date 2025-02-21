const assert = @import("std").debug.assert;

test "type of unreachable" {
    comptime {
        assert(@TypeOf(unreachable) == noreturn);
    }
}
