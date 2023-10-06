const Faker = @import("../../faker.zig").Faker;

pub fn is(
    comptime T: type,
) bool {
    return @typeInfo(T) == .Struct and !@typeInfo(T).Struct.is_tuple;
}

pub fn dummy(comptime T: type, comptime opt: anytype, faker: Faker(opt)) T {
    const info = @typeInfo(T).Struct;
    var item: T = undefined;
    const customization: ?type = if (comptime @hasDecl(T, "faker.fields")) T.@"faker.fields" else null;

    inline for (info.fields) |field| {
        if (customization) |cfg| {
            if (@hasDecl(cfg, field.name)) {
                const field_cfg = @field(cfg, field.name);
                if (@typeInfo(@TypeOf(field_cfg)) == .Fn) {
                    @field(item, field.name) = @call(.auto, field_cfg, .{ opt, faker });
                } else {
                    const category_name = field_cfg[0];
                    const func_name = field_cfg[1];
                    const category = @field(faker, category_name);
                    const func = @field(@TypeOf(category), func_name);
                    if (field_cfg.len >= 3) {
                        @field(item, field.name) = @call(.auto, func, .{ category, field_cfg[2] });
                    } else {
                        @field(item, field.name) = @call(.auto, func, .{category});
                    }
                }
                continue;
            }
        }
        @field(item, field.name) = faker.dummy(field.type);
    }
    return item;
}
