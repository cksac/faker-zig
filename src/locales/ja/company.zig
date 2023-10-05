pub const category = [_][]const u8{ "水産", "農林", "鉱業", "建設", "食品", "印刷", "電気", "ガス", "情報", "通信", "運輸", "銀行", "保険" };

pub const name_pattern = [_][]const u8{ "{{company.type}}{{person.last_name}}{{company.category}}", "{{person.last_name}}{{company.category}}{{company.type}}" };

pub const @"type" = [_][]const u8{ "株式会社", "有限会社", "合名会社", "合資会社", "合同会社" };
