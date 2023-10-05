pub const city_name = [_][]const u8{ "Bhaktapur", "Biratnagar", "Birendranagar", "Birgunj", "Butwal", "Damak", "Dharan", "Gaur", "Gorkha", "Hetauda", "Itahari", "Janakpur", "Kathmandu", "Lahan", "Nepalgunj", "Pokhara" };

pub const city_pattern = [_][]const u8{"{{location.city_name}}"};

pub const default_country = [_][]const u8{"Nepal"};

pub const postcode = [_][]const u8{ "1####", "2####", "3####", "4####", "5####" };

pub const state = [_][]const u8{ "Baglung", "Banke", "Bara", "Bardiya", "Bhaktapur", "Bhojupu", "Chitwan", "Dailekh", "Dang", "Dhading", "Dhankuta", "Dhanusa", "Dolakha", "Dolpha", "Gorkha", "Gulmi", "Humla", "Ilam", "Jajarkot", "Jhapa", "Jumla", "Kabhrepalanchok", "Kalikot", "Kapilvastu", "Kaski", "Kathmandu", "Lalitpur", "Lamjung", "Manang", "Mohottari", "Morang", "Mugu", "Mustang", "Myagdi", "Nawalparasi", "Nuwakot", "Palpa", "Parbat", "Parsa", "Ramechhap", "Rauswa", "Rautahat", "Rolpa", "Rupandehi", "Sankhuwasabha", "Sarlahi", "Sindhuli", "Sindhupalchok", "Sunsari", "Surket", "Syangja", "Tanahu", "Terhathum" };

pub const street_pattern = [_][]const u8{ "{{person.firstName}} {{location.street_suffix}}", "{{person.lastName}} {{location.street_suffix}}" };
