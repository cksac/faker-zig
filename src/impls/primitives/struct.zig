const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return @typeInfo(T) == .Struct and !@typeInfo(T).Struct.is_tuple;
}

pub fn dummy(comptime T: type, comptime locales: anytype, comptime user_impls: anytype, faker: Faker(locales, user_impls)) T {
    const info = @typeInfo(T).Struct;
    var item: T = undefined;
    inline for (info.fields) |field| {
        if (@hasDecl(T, "faker.dummy")) {
            const cfg = T.@"faker.dummy";
            if (@hasDecl(cfg, field.name)) {
                const field_cfg = @field(cfg, field.name);
                if (@typeInfo(@TypeOf(field_cfg)) == .Fn) {
                    @field(item, field.name) = @call(.auto, field_cfg, .{ locales, user_impls, faker });
                } else {
                    const category_name = field_cfg[0];
                    const func_name = field_cfg[1];
                    const category = @field(faker, category_name);
                    const func = @field(@TypeOf(category), func_name);
                    @field(item, field.name) = @call(.auto, func, .{category});
                }
            } else {
                @field(item, field.name) = faker.dummy(field.type);
            }
        } else {
            @field(item, field.name) = faker.dummy(field.type);
        }
    }
    return item;
}
