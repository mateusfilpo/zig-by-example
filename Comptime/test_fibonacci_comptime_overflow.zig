const expect = @import("std").testing.expect;

fn fibonacci(index: u32) u32 {
    return fibonacci(index - 1) + fibonacci(index - 2);
}

test "fibonacci" {
    try comptime expect(fibonacci(7) == 13);
}
