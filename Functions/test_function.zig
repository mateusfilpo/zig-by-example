const std = @import("std");
const builtin = @import("builtin");
const native_arch = builtin.cpu.arch;
const expect = std.testing.expect;

fn add(a: i8, b: i8) i8 {
    if (a == 0) {
        return b;
    }

    return a + b;
}

export fn sub(a: i8, b: i8) i8 {
    return a - b;
}

const WINAPI: std.builtin.CallingConvention = if (native_arch == .x86) .Stdcall else .C;
extern "kernel32" fn ExitProcess(exit_code: u32) callconv(WINAPI) noreturn;
extern "c" fn atan2(a: f64, b: f64) f64;

fn abort() noreturn {
    @branchHint(.cold);
    while (true) {}
}

fn _start() callconv(.Naked) noreturn {
    abort();
}

inline fn shiftLeftOne(a: u32) u32 {
    return a << 1;
}

pub fn sub2(a: i8, b: i8) i8 {
    return a - b;
}

const Call2Op = *const fn (a: i8, b: i8) i8;
fn doOp(fnCall: Call2Op, op1: i8, op2: i8) i8 {
    return fnCall(op1, op2);
}

test "function" {
    try expect(doOp(add, 5, 6) == 11);
    try expect(doOp(sub2, 5, 6) == -1);
}
