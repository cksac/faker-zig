const NamePattern = @import("../../modules/person.zig").NamePattern;

pub const female_first_name = [_][]const u8{ "Ajita", "Amita", "Ashmi", "Asmita", "Bina", "Deepika", "Laxmi", "Manisha", "Nikita", "Pooja", "Rajina", "Ratna", "Sarita", "Shilpa", "Shirisha", "Shristi", "Sunita", "Susan" };

pub const first_name = [_][]const u8{ "Aarav", "Ajita", "Amit", "Amita", "Amrit", "Arijit", "Ashmi", "Asmita", "Bibek", "Bijay", "Bikash", "Bina", "Bishal", "Bishnu", "Buddha", "Deepika", "Dipendra", "Gagan", "Ganesh", "Khem", "Krishna", "Laxmi", "Manisha", "Nabin", "Nikita", "Niraj", "Nischal", "Padam", "Pooja", "Prabin", "Prakash", "Prashant", "Prem", "Purna", "Rajendra", "Rajina", "Raju", "Rakesh", "Ranjan", "Ratna", "Sagar", "Sandeep", "Sanjay", "Santosh", "Sarita", "Shilpa", "Shirisha", "Shristi", "Siddhartha", "Subash", "Sumeet", "Sunita", "Suraj", "Susan", "Sushant" };

pub const last_name = [_][]const u8{ "Adhikari", "Aryal", "Baral", "Basnet", "Bastola", "Basynat", "Bhandari", "Bhattarai", "Chettri", "Devkota", "Dhakal", "Dongol", "Ghale", "Gurung", "Gyawali", "Hamal", "Jung", "KC", "Kafle", "Karki", "Khadka", "Koirala", "Lama", "Limbu", "Magar", "Maharjan", "Niroula", "Pandey", "Pradhan", "Rana", "Raut", "Sai", "Shai", "Shakya", "Sherpa", "Shrestha", "Subedi", "Tamang", "Thapa" };

pub const last_name_pattern = [_]NamePattern{.{ .value = "{{person.last_name}}", .weight = 1 }};

pub const male_first_name = [_][]const u8{ "Aarav", "Amit", "Amrit", "Arijit", "Bibek", "Bijay", "Bikash", "Bishal", "Bishnu", "Buddha", "Dipendra", "Gagan", "Ganesh", "Khem", "Krishna", "Nabin", "Niraj", "Nischal", "Padam", "Prabin", "Prakash", "Prashant", "Prem", "Purna", "Rajendra", "Raju", "Rakesh", "Ranjan", "Sagar", "Sandeep", "Sanjay", "Santosh", "Siddhartha", "Subash", "Sumeet", "Suraj", "Sushant" };
