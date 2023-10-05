pub const building_number = [_][]const u8{ "####", "###", "##", "#" };

pub const city_pattern = [_][]const u8{"{{location.city_prefix}}{{location.city_suffix}}"};

pub const city_prefix = [_][]const u8{ "臺北", "新北", "桃園", "臺中", "臺南", "高雄", "基隆", "新竹", "嘉義", "苗栗", "彰化", "南投", "雲林", "屏東", "宜蘭", "花蓮", "臺東", "澎湖", "金門", "連江" };

pub const city_suffix = [_][]const u8{ "縣", "市" };

pub const default_country = [_][]const u8{"Taiwan (R.O.C.)"};

pub const postcode = [_][]const u8{"######"};

pub const state = [_][]const u8{ "福建省", "台灣省" };

pub const state_abbr = [_][]const u8{ "北", "新北", "桃", "中", "南", "高", "基", "竹市", "嘉市", "竹縣", "苗", "彰", "投", "雲", "嘉縣", "宜", "花", "東", "澎", "金", "馬" };

pub const street_address = .{ .normal = "{{location.street}}{{location.buildingNumber}}號", .full = "{{location.street}}{{location.buildingNumber}}號 {{location.secondaryAddress}}" };

pub const street_pattern = [_][]const u8{"{{person.last_name}}{{location.street_suffix}}"};

pub const street_suffix = [_][]const u8{ "街", "路", "北路", "南路", "東路", "西路" };
