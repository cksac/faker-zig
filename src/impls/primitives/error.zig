const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return @typeInfo(T) == .ErrorSet;
}

pub fn dummy(comptime T: type, comptime opt: anytype, faker: Faker(opt)) T {
    const info = @typeInfo(T).ErrorSet;
    const variant = faker.random.uintLessThan(usize, info.len);
    return info[variant];
}
