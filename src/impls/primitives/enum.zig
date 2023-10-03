const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return @typeInfo(T) == .Enum;
}

pub fn dummy(comptime T: type, comptime opt: anytype, faker: Faker(opt)) T {
    return faker.random.enumValue(T);
}
