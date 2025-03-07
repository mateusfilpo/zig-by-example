const Foo = struct {};
fn doSomethingWithFoo(foo: *Foo) void {
    _ = foo;
}

fn doAThing(optional_foo: ?*Foo) void {
    if (optional_foo) |foo| {
        doSomethingWithFoo(foo);
    }
}
