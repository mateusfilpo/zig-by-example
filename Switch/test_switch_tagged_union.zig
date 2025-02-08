const expect = @import("std").testing.expect;

test "switch on tagged union" {
    const Point = struct {
        x: u8,
        y: u8,
    };
    const Item = union(enum) {
        a: u32,
        c: Point,
        d,
        e: u32,
    };

    var a = Item{ .c = Point{ .x = 1, .y = 2 } };

    const b = switch (a) {
        Item.a, Item.e => |item| item,

        Item.c => |*item| blk: {
            item.*.x += 1;
            break :blk 6;
        },

        Item.d => 8,
    };

    try expect(b == 6);
    try expect(a.c.x == 2);
}
