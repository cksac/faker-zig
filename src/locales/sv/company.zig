pub const name_pattern = [_][]const u8{ "{{person.last_name}} {{company.suffix}}", "{{person.last_name}}-{{person.last_name}}", "{{person.last_name}}, {{person.last_name}} {{company.suffix}}" };

pub const suffix = [_][]const u8{ "Gruppen", "AB", "HB", "Group", "Investment", "Kommanditbolag", "Aktiebolag" };
