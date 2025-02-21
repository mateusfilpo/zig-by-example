fn assert(ok: bool) void {
    if (!ok) unreachable;
}

test "this will fail" {
    assert(false);
}
