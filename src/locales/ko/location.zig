pub const city_name = [_][]const u8{ "강릉", "양양", "인제", "광주", "구리", "부천", "밀양", "통영", "창원", "거창", "고성", "양산", "김천", "구미", "영주", "광산", "남", "북", "고창", "군산", "남원", "동작", "마포", "송파", "용산", "부평", "강화", "수성", "수원", "속초", "전주", "목포", "분당", "안양", "시흥" };

pub const city_pattern = [_][]const u8{"{{location.city_name}}{{location.city_suffix}}"};

pub const city_suffix = [_][]const u8{ "구", "시", "군" };

pub const postcode = [_][]const u8{ "###-###", "#####" };

pub const secondary_address = [_][]const u8{ "아파트 ###동", "###호" };

pub const state = [_][]const u8{ "강원", "경기", "경남", "경북", "광주", "대구", "대전", "부산", "서울", "울산", "인천", "전남", "전북", "제주", "충남", "충북", "세종" };

pub const state_abbr = [_][]const u8{ "강원", "경기", "경남", "경북", "광주", "대구", "대전", "부산", "서울", "울산", "인천", "전남", "전북", "제주", "충남", "충북", "세종" };

pub const street_name = [_][]const u8{ "상계", "화곡", "신정", "목", "잠실", "면목", "주안", "중", "정왕", "구로", "신월", "연산", "창", "만수", "중계", "검단", "상도", "방배", "장유", "상", "광명", "신길", "행신", "대명", "동탄", "판교", "연무" };

pub const street_pattern = [_][]const u8{"{{location.street_name}}{{location.street_suffix}}"};

pub const street_suffix = [_][]const u8{ "읍", "면", "동" };
