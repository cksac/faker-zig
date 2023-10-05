const NamePattern = @import("../../modules/person.zig").NamePattern;

pub const last_name_pattern = [_]NamePattern{ .{ .value = "{{person.last_name}}", .weight = 95 }, .{ .value = "{{person.last_name}}-{{person.last_name}}", .weight = 5 } };
