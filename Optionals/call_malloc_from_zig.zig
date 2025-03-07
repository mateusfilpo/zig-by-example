extern fn malloc(size: usize) ?[*]u8;

fn doAThing() ?*Foo {
    const ptr = malloc(1234) orelse return null;
    _ = ptr;
}
