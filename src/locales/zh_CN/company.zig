pub const category = [_][]const u8{ "水产", "林业", "矿业", "建设", "食品", "印刷", "电力", "燃气", "网络科技", "物流", "保险", "旅游发展", "传媒", "运输" };

pub const name_pattern = [_][]const u8{ "{{location.state}}{{person.first_name}}{{company.category}}{{company.type}}", "{{location.city}}{{person.first_name}}{{company.category}}{{company.type}}" };

pub const @"type" = [_][]const u8{ "有限责任公司", "股份有限公司", "有限公司", "（集团）有限公司", "集团有限公司", "无限公司", "无限责任公司" };
