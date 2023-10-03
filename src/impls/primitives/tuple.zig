const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return @typeInfo(T) == .Struct and @typeInfo(T).Struct.is_tuple;
}

pub fn dummy(comptime T: type, comptime opt: anytype, faker: Faker(opt)) T {
    const info = @typeInfo(T).Struct;
    var item: T = undefined;
    inline for (info.fields) |field| {
        @field(item, field.name) = faker.dummy(field.type);
    }
    return item;
}
