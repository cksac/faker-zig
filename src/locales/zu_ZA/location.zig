pub const city_name = [_][]const u8{ "Polokwane", "eGoli", "Pretoria", "uTshwane", "eThekwini", "umGungundlovu", "Mbombela", "eKapa", "Stellenbosch", "iBhayi", "eMonti", "Kimberley", "Rustenburg", "Bloemfontein" };

pub const city_pattern = [_][]const u8{"{{location.city_name}}"};

pub const default_country = [_][]const u8{"South Africa"};

pub const postcode = [_][]const u8{ "#####", "####" };

pub const state = [_][]const u8{ "EGoli", "IFuleyisitata", "IKwaZulu-Natali", "ILimpopo", "IMpumalanga Kapa", "IMpumalanga", "INtshonalanga Kapa", "INyakatho Kapa", "INyakatho-Ntshonalanga" };

pub const street_pattern = [_][]const u8{ "{{person.firstName}} {{location.street_suffix}}", "{{person.lastName}} {{location.street_suffix}}" };
