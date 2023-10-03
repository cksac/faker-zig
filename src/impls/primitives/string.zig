const std = @import("std");
const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return comptime std.meta.trait.isZigString(T);
}

pub fn dummy(comptime T: type, comptime opt: anytype, faker: Faker(opt)) T {
    // TODO: return same len of request type?
    const str = faker.lorem.word();
    return @ptrCast(@constCast(str));
}
