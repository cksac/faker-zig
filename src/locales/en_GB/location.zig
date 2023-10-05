pub const building_number = [_][]const u8{ "###", "##", "#" };

pub const city_infix = [_][]const u8{ "-under-", "-over-", "-le-", "-upon-", "-on-" };

pub const city_pattern = [_][]const u8{ "{{location.city_prefix}} {{person.last_name}}{{location.city_suffix}}", "{{location.city_prefix}} {{person.last_name}}", "{{person.last_name}}{{location.city_suffix}}", "{{person.last_name}}{{location.city_infix}}{{person.last_name}}" };

pub const city_prefix = [_][]const u8{ "Great", "Little", "St.", "West", "East", "North", "South", "Upper", "Lower", "Old", "Long", "New", "High", "Nether", "Castle", "Upton", "Newton" };

pub const city_suffix = [_][]const u8{ "ton", "ham", "ley", "ington", "ford", "field", "bury", "don", "ing", "worth", "well", "ingham", "wood", "ridge", "borough", "stone", "hill", "thorpe", "hampton", "wick", " Green", " Park", " Hill", " Court", " Heath", " Bridge", " End", " Common", " Place", " Cross", " Gardens" };

pub const county = [_][]const u8{ "Avon", "Bedfordshire", "Berkshire", "Borders", "Buckinghamshire", "Cambridgeshire", "Central", "Cheshire", "Cleveland", "Clwyd", "Cornwall", "County Antrim", "County Armagh", "County Down", "County Fermanagh", "County Londonderry", "County Tyrone", "Cumbria", "Derbyshire", "Devon", "Dorset", "Dumfries and Galloway", "Durham", "Dyfed", "East Sussex", "Essex", "Fife", "Gloucestershire", "Grampian", "Greater Manchester", "Gwent", "Gwynedd County", "Hampshire", "Herefordshire", "Hertfordshire", "Highlands and Islands", "Humberside", "Isle of Wight", "Kent", "Lancashire", "Leicestershire", "Lincolnshire", "Lothian", "Merseyside", "Mid Glamorgan", "Norfolk", "North Yorkshire", "Northamptonshire", "Northumberland", "Nottinghamshire", "Oxfordshire", "Powys", "Rutland", "Shropshire", "Somerset", "South Glamorgan", "South Yorkshire", "Staffordshire", "Strathclyde", "Suffolk", "Surrey", "Tayside", "Tyne and Wear", "Warwickshire", "West Glamorgan", "West Midlands", "West Sussex", "West Yorkshire", "Wiltshire", "Worcestershire" };

pub const default_country = [_][]const u8{ "England", "Scotland", "Wales", "Northern Ireland" };

pub const postcode = [_][]const u8{ "??# #??", "??## #??" };

pub const state = [_][]const u8{ "England", "Northern Ireland", "Scotland", "Wales" };

pub const state_abbr = [_][]const u8{ "ENG", "NIR", "SCT", "WLS" };

pub const street_pattern = [_][]const u8{ "{{person.firstName}} {{location.street_suffix}}", "{{person.lastName}} {{location.street_suffix}}" };

pub const street_suffix = [_][]const u8{ "Road", "Close", "Street", "Lane", "Avenue", "Drive", "Way", "Place", "Court", "Gardens", "Crescent", "Grove", "Terrace", "Hill", "View", "Walk", "Park", "Mews", "Rise", "Green", "Square", "Croft", "Bank", "Row", "Meadow", "Gate", "End", "Drove", "Mead", "Field", "Chase", "Mount", "Meadows", "Orchard", "Fields", "Yard", "Garth", "Fold", "Wynd", "Parade", "Vale", "Brae", "Grange", "Approach", "Wood", "Paddock", "Brow", "Lea", "Path", "Side", "Heights", "Copse", "Corner", "Ridge", "Glade" };
