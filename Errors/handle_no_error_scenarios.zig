fn doADifferentThing(str: []u8) void {
    if (parseU64(str, 10)) |number| {
        doSomethingWithNumber(number);
    } else |_| {

    }
}


fn parseU64(str: []u8, x: i8) void {
    _ = str;
    _ = x;
}

fn doSomethingWithNumber(x: i8) void {
    _ = x;
}
