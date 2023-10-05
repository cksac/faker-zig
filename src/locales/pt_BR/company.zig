pub const name_pattern = [_][]const u8{ "{{person.last_name}} {{company.suffix}}", "{{person.last_name}}-{{person.last_name}}", "{{person.last_name}}, {{person.last_name}} e {{person.last_name}}" };

pub const suffix = [_][]const u8{ "S.A.", "LTDA", "EIRELI", "e Associados", "Comércio" };
