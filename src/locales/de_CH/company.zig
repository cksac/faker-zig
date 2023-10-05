pub const name_pattern = [_][]const u8{ "{{person.last_name}} {{company.suffix}}", "{{person.last_name}}-{{person.last_name}}", "{{person.last_name}}, {{person.last_name}} und {{person.last_name}}" };

pub const suffix = [_][]const u8{ "AG", "GmbH", "und Söhne", "und Partner", "& Co.", "Gruppe", "LLC", "Inc." };
