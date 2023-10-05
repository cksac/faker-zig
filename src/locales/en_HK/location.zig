pub const building_number = [_][]const u8{ "###", "##", "#" };

pub const city_name = [_][]const u8{ "Aberdeen", "Ap Lei Chau", "Causeway Bay", "Chai Wan", "Cheung Chau", "Cheung Fat", "Cheung Sha Wan", "Choi Hung Chuen", "Choi Ming", "Chuk Yuen", "Cyberport", "Discovery Bay", "Fairview Park", "Fanling", "Fo Tan", "Fu Shan", "Fu Shin", "Fu Tai", "Happy Valley", "Heng Fa Chuen", "Heng On", "Hin Keng", "Ho Man Tin", "Hung Hom Bay", "Kam Tai", "Kam Tin", "Kennedy Town", "Kowloon", "Kowloon Bay", "Kowloon Central", "Kowloon City", "Kowloon East", "Kwai Chung", "Kwai Fong", "Kwai Shing", "Kwong Yuen", "Kwun Tong", "Lai King", "Lai Kok", "Lam Tin", "Lamma", "Lee On", "Lei Muk Shue", "Lei Tung", "Leung King", "Lok Fu", "Ma On Shan", "Mei Foo Sun Chuen", "Mei Lam", "Mong Kok", "Mui Wo", "Ngau Chi Wan", "Ngau Tau Kok", "Oi Man", "Peak", "Peng Chau", "Po Lam", "Pok Fu Lam", "Repulse Bay", "Sai Kung", "Sai Ying Pun", "San Tin", "Sau Mau Ping", "Sha Kok", "Sha Tau Kok", "Sha Tin", "Sham Shui Po", "Shau Kei Wan", "Shek Kip Mei", "Shek Lei", "Shek Wai Kok", "Shek Wu Hui", "Sheung Tak", "Sheung Wan", "Shun Lee", "Siu Sai Wan", "So Uk", "Stanley", "Sun Chui", "Tai Hing", "Tai Kok Tsui", "Tai Koo Shing", "Tai O", "Tai Po", "Tin Yiu", "Tin Yuet", "To Kwa Wan", "Tsat Tsz Mui", "Tseung Kwan O", "Tsim Sha Tsui", "Tsing Yi", "Tsuen Wan", "Tsz Wan Shan", "Tuen Mun", "Tung Chung", "Wah Fu", "Wah Ming", "Wan Chai", "Wan Tau Tong", "Wo Che", "Wong Tai Sin", "Yau Tong", "Yau Yat Tsuen", "Yuen Long" };

pub const city_pattern = [_][]const u8{"{{location.city_name}}"};

pub const default_country = [_][]const u8{"Hong Kong"};

pub const postcode = .{};

pub const postcode_by_state = .{};

pub const state = [_][]const u8{ "Hong Kong Island", "Kowloon", "New Territories" };

pub const state_abbr = [_][]const u8{ "HK", "KLN", "NT" };

pub const street_cantonese_part = [_][]const u8{ "Wan", "On", "Tai", "Man", "Fung", "Cheung", "Tung", "Hing", "Po", "Wah", "Tak", "Shing", "Lung", "Yuen", "Wing", "Hong", "Yip", "King", "Kwong", "Hoi", "Ming", "Wa", "Lok", "Yan", "Wai", "Chi", "Fuk", "Lai", "Lee", "Fu", "Tin", "Kai", "Sai", "Shun", "Ping", "Yee", "Wo", "Chung", "Hang", "Ning", "Wong", "Yue", "Choi", "Wang", "Ching", "Sau", "Shan", "Tsui", "Tau", "Sheung", "Lam", "Fat", "Hung", "Chuk", "Shek", "Kok", "Cheong", "Fong", "Nam", "Lei", "Yu", "Mei", "Pak", "Fai", "Kwai", "Sing", "Kung", "Chau", "Tong", "San", "Chiu", "Chun", "Yin", "Yuk", "Ting", "Kam", "Lun", "Oi" };

pub const street_english_part = [_][]const u8{ "Aldrich", "Arran", "Austin", "Baker", "Battery", "Bel-Air", "Bonham", "Boundary", "Bowen", "Breezy", "Caine", "Cameron", "Canal", "Cape", "Chatham", "Church", "College", "Comet", "Connaught", "Cornwall", "Cox's", "Cross", "Douglas", "Dragon", "Eastern", "Electric", "Expo", "Findlay", "First", "Garden", "Gillies", "Greig", "Hospital", "Jardine's", "Jordan", "Kennedy", "Kimberley", "Leighton", "Maidstone", "Maple", "Marsh", "Monmouth", "Oaklands", "Peel", "Poplar", "Rose", "Second", "Seymour", "Stewart", "Third", "Village", "Water", "Waterloo", "Wylie" };

pub const street_pattern = [_][]const u8{ "{{location.street_english_part}} {{location.street_suffix}}", "{{location.street_cantonese_part}} {{location.street_cantonese_part}} {{location.street_suffix}}" };

pub const street_prefix = .{};

pub const street_suffix = [_][]const u8{ "Street", "Road", "Lane", "Path", "Terrace", "Avenue", "Drive", "Crescent", "Court" };
