pub const building_number = [_][]const u8{ "#####", "####", "###", "##", "#" };

pub const city_pattern = [_][]const u8{"{{location.city_prefix}}{{location.city_suffix}}"};

pub const city_prefix = [_][]const u8{ "上", "包", "北", "南", "厦", "吉", "太", "宁", "安", "成", "武", "济", "海", "珠", "福", "衡", "西", "诸", "贵", "长" };

pub const city_suffix = [_][]const u8{ "乡县", "京市", "南市", "原市", "口市", "头市", "宁市", "安市", "州市", "徽市", "林市", "汉市", "沙市", "海市", "码市", "都市", "门市", "阳市" };

pub const default_country = [_][]const u8{"中国"};

pub const postcode = [_][]const u8{"######"};

pub const state = [_][]const u8{ "北京市", "上海市", "天津市", "重庆市", "黑龙江省", "吉林省", "辽宁省", "内蒙古自治区", "河北省", "新疆维吾尔自治区", "甘肃省", "青海省", "陕西省", "宁夏回族自治区", "河南省", "山东省", "山西省", "安徽省", "湖北省", "湖南省", "江苏省", "四川省", "贵州省", "云南省", "广西壮族自治区", "西藏自治区", "浙江省", "江西省", "广东省", "福建省", "海南省" };

pub const state_abbr = [_][]const u8{ "北京", "上海", "天津", "重庆", "黑龙江", "吉林", "辽阳", "内蒙古", "河北", "新疆", "甘肃", "青海", "陕西", "宁夏", "河南", "山东", "山西", "合肥", "湖北", "湖南", "苏州", "四川", "贵州", "云南", "广西", "西藏", "浙江", "江西", "广东", "福建", "海南" };

pub const street_address = .{ .normal = "{{location.street}}{{location.buildingNumber}}号", .full = "{{location.street}}{{location.buildingNumber}}号 {{location.secondaryAddress}}" };

pub const street_pattern = [_][]const u8{"{{person.last_name}}{{location.street_suffix}}"};

pub const street_suffix = [_][]const u8{ "巷", "街", "路", "桥", "侬", "旁", "中心", "栋" };
