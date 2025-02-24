const Point = struct {
    x: i32,
    y: i32,
};

fn foo(point: Point) i32 {
    return point.x + point.y;
}

const expect = @import("std").testing.expect;

test "pass struct to function" {
    try expect(foo(Point{ .x = 1, .y = 2 }) == 3);
}
