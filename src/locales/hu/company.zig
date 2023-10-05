pub const name_pattern = [_][]const u8{ "{{person.last_name}} {{company.suffix}}", "{{person.last_name}} és {{person.last_name}} {{company.suffix}}", "{{person.last_name}} és Tsa. {{company.suffix}}", "{{person.last_name}} 2000 {{company.suffix}}" };

pub const suffix = [_][]const u8{ "Kft.", "Bt.", "Zrt.", "Nyrt.", "Kv.", "Kkt." };
