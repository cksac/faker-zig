pub const name_pattern = [_][]const u8{ "{{company.prefix}} {{person.first_name}}", "{{company.prefix}} {{person.last_name}}", "{{company.prefix}} {{person.last_name}} {{company.suffix}}", "{{company.prefix}} {{person.first_name}} {{company.suffix}}", "{{company.prefix}} {{person.last_name}}-{{person.last_name}}" };

pub const prefix = [_][]const u8{ "შპს", "სს", "ააიპ", "სსიპ" };

pub const suffix = [_][]const u8{ "ჯგუფი", "და კომპანია", "სტუდია", "გრუპი" };
