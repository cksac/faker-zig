const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return @typeInfo(T) == .Union;
}

pub fn dummy(comptime T: type, comptime opt: anytype, faker: Faker(opt)) T {
    const info = @typeInfo(T).Union;
    var item: T = undefined;
    const variant = faker.random.uintLessThan(usize, info.fields.len);
    inline for (info.fields, 0..) |field, i| {
        if (i == variant) {
            item = @unionInit(T, field.name, faker.dummy(field.type));
        }
    }
    return item;
}
