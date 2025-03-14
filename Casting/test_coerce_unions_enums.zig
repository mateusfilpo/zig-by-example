const std = @import("std");
const expect = std.testing.expect;

const E = enum {
    one,
    two,
    three,
};

const U = union(E) {
    one: i32,
    two: f32,
    three,
};

const U2 = union(enum) {
    a: void,
    b: f32,

    fn tag(self: U2) usize {
        switch (self) {
            .a => return 1,
            .b => return 2,
        }
    }
};

test "coercion between unions and enums" {
    const u = U{ .two = 12.34 };
    const e: E = u;
    try expect(e == E.two);

    const three = E.three;
    const u_2: U = three;
    try expect(u_2 == E.three);

    const u_3: U = .three;
    try expect(u_3 == E.three);

    const u_4: U2 = .a;
    try expect(u_4.tag() == 1);
}
