const NamePattern = @import("../../modules/person.zig").NamePattern;

pub const last_name_pattern = [_]NamePattern{.{ .value = "{{person.last_name}}", .weight = 1 }};
