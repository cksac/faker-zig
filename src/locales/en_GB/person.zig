const NamePattern = @import("../../modules/person.zig").NamePattern;

pub const last_name_pattern = [_]NamePattern{ .{ .value = "{{person.last_name}}", .weight = 9 }, .{ .value = "{{person.last_name}}-{{person.last_name}}", .weight = 1 } };

pub const name = [_]NamePattern{ .{ .value = "{{person.firstName}} {{person.lastName}}", .weight = 7 }, .{ .value = "{{person.prefix}} {{person.firstName}} {{person.lastName}}", .weight = 1 } };
