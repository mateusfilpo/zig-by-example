fn createFoo(param: i32) !Foo {
    const foo = try tryToAllocateFoo();
    errdefer deallocateFoo(foo);

    const tmp_buf = allocateTmpBuffer() orelse return error.OutOfMemory;
    defer deallocateTmpBuffer(tmp_buf);

    if (param > 1337) return error.InvalidParam;

    return foo;
}
