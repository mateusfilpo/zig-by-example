fn List(comptime T: type) type {
    return struct {
        items: []T,
        len: usize,
    };
}

var buffer: [10]i32 = undefined;
var list = List(i32){
    .items = &buffer,
    .len = 0,
};
