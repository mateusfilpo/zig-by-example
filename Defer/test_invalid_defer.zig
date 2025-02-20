fn deferInvalidExample() !void {
    defer {
        return error.DeferError;
    }

    return rerror.DeferError;
}
