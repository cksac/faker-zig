const NamePattern = @import("../../modules/person.zig").NamePattern;

pub const female_first_name = [_][]const u8{ "俊馳", "凱瑞", "博濤", "嘉懿", "子涵", "子騫", "子默", "思淼", "懿軒", "擎蒼", "旭堯", "昊焱", "晟睿", "智宸", "智淵", "曉博", "曉嘯", "楷瑞", "樂駒", "瀟然", "炫明", "煜城", "煜祺", "熠彤", "燁磊", "燁華", "燁霖", "瑾瑜", "睿淵", "立軒", "笑愚", "聰健", "苑博", "越彬", "鈺軒", "錦程", "靖琪", "風華", "鶴軒", "鷺洋", "黎昕" };

pub const female_prefix = .{};

pub const first_name = [_][]const u8{ "俊馳", "修傑", "修潔", "偉宸", "偉澤", "偉祺", "偉誠", "健柏", "健雄", "凱瑞", "博文", "博濤", "博超", "君浩", "哲瀚", "嘉懿", "嘉熙", "天宇", "天磊", "天翊", "子涵", "子軒", "子騫", "子默", "展鵬", "峻熙", "建輝", "弘文", "志強", "志澤", "思淼", "思源", "思聰", "思遠", "懿軒", "振家", "擎宇", "擎蒼", "文博", "文昊", "文軒", "旭堯", "昊天", "昊強", "昊焱", "昊然", "明哲", "明杰", "明軒", "明輝", "晉鵬", "晟睿", "智宸", "智淵", "智輝", "曉博", "曉嘯", "梓晨", "楷瑞", "榮軒", "樂駒", "正豪", "浩宇", "浩然", "浩軒", "澤洋", "瀟然", "炎彬", "炫明", "煜城", "煜祺", "熠彤", "燁偉", "燁磊", "燁華", "燁霖", "瑞霖", "瑾瑜", "皓軒", "睿淵", "立果", "立誠", "立軒", "立輝", "笑愚", "紹輝", "紹齊", "耀傑", "聰健", "胤祥", "致遠", "苑博", "語堂", "越彬", "越澤", "遠航", "金鑫", "鈺軒", "錦程", "鑫磊", "鑫鵬", "雨澤", "雪松", "靖琪", "風華", "鴻濤", "鴻煊", "鵬濤", "鵬煊", "鵬飛", "鶴軒", "鷺洋", "黎昕" };

pub const last_name = [_][]const u8{ "王", "李", "張", "劉", "陳", "楊", "黃", "吳", "趙", "週", "徐", "孫", "馬", "朱", "胡", "林", "郭", "何", "高", "羅", "鄭", "梁", "謝", "宋", "唐", "許", "鄧", "馮", "韓", "曹", "曾", "彭", "蕭", "蔡", "潘", "田", "董", "袁", "於", "餘", "葉", "蔣", "杜", "蘇", "魏", "程", "呂", "丁", "沈", "任", "姚", "盧", "傅", "鐘", "姜", "崔", "譚", "廖", "範", "汪", "陸", "金", "石", "戴", "賈", "韋", "夏", "邱", "方", "侯", "鄒", "熊", "孟", "秦", "白", "江", "閻", "薛", "尹", "段", "雷", "黎", "史", "龍", "陶", "賀", "顧", "毛", "郝", "龔", "邵", "萬", "錢", "嚴", "賴", "覃", "洪", "武", "莫", "孔" };

pub const last_name_pattern = [_]NamePattern{.{ .value = "{{person.last_name}}", .weight = 1 }};

pub const male_first_name = [_][]const u8{ "修傑", "修潔", "偉宸", "偉澤", "偉祺", "偉誠", "健柏", "健雄", "博文", "博超", "君浩", "哲瀚", "嘉熙", "天宇", "天磊", "天翊", "子軒", "展鵬", "峻熙", "建輝", "弘文", "志強", "志澤", "思源", "思聰", "思遠", "振家", "擎宇", "文博", "文昊", "文軒", "昊天", "昊強", "昊然", "明哲", "明杰", "明軒", "明輝", "晉鵬", "智輝", "梓晨", "榮軒", "正豪", "浩宇", "浩然", "浩軒", "澤洋", "炎彬", "燁偉", "瑞霖", "皓軒", "立果", "立誠", "立輝", "紹輝", "紹齊", "耀傑", "胤祥", "致遠", "語堂", "越澤", "遠航", "金鑫", "鑫磊", "鑫鵬", "雨澤", "雪松", "鴻濤", "鴻煊", "鵬濤", "鵬煊", "鵬飛" };

pub const male_prefix = .{};

pub const name = [_]NamePattern{.{ .value = "{{person.lastName}}{{person.firstName}}", .weight = 1 }};

pub const prefix = .{};
