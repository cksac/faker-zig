const NamePattern = @import("../../modules/person.zig").NamePattern;

pub const female_first_name = [_][]const u8{ "Adaugo", "Akunna", "Aminat", "Aminu", "Augustina", "Ayebatari", "Cherechi", "Chiamaka", "Chimamanda", "Chinyere", "Chizoba", "Ebiere", "Efe", "Fatima", "Ifeoma", "Ifunanya", "Isioma", "Jolayemi", "Lola", "Obioma", "Omawunmi", "Omolara", "Onome", "Rasheedah", "Sekinat", "Simisola", "Sumayyah", "Titi", "Titilayo", "Toluwani", "Zainab" };

pub const first_name = [_][]const u8{ "Adaugo", "Akunna", "Aminat", "Aminu", "Augustina", "Ayebatari", "Cherechi", "Chiamaka", "Chimamanda", "Chinyere", "Chizoba", "Ebiere", "Efe", "Fatima", "Ifeoma", "Ifunanya", "Isioma", "Jolayemi", "Lola", "Obioma", "Omawunmi", "Omolara", "Onome", "Rasheedah", "Sekinat", "Simisola", "Sumayyah", "Titi", "Titilayo", "Toluwani", "Zainab", "Abimbola", "Abisola", "Abisoye", "Adeboye", "Adedayo", "Adegoke", "Akande", "Akanni", "Alade", "Ayinde", "Azubuike", "Banji", "Bankole", "Buchi", "Bukola", "Chinedu", "Chisom", "Chukwu", "Damilare", "Damilola", "Danjuma", "Ebiowei", "Emeka", "Emmanuel", "Esse", "Funmilade", "Funmilayo", "Gbeminiyi", "Gbemisola", "Habiba", "Ifeanyichukwu", "Ikenna", "Ikhidie", "Ireti", "Jadesola", "Johnson", "Kayode", "Kemi", "Kubra", "Kubura", "Lolade", "Makinwa", "Mohammed", "Musa", "Muyiwa", "Nnamdi", "Olaide", "Olufunmi", "Olumide", "Oluwunmi", "Onoriode", "Remilekun", "Rotimi", "Shade", "Shalewa", "Sname", "Tari", "Temitope", "Titilope", "Tobiloba", "Toke", "Tomiloba", "Tope", "Uzodimma", "Wale", "Yakubu", "Yusuf" };

pub const last_name = [_][]const u8{ "Abiodun", "Abiola", "Abodunrin", "Abosede", "Adaobi", "Adebayo", "Adegboye", "Adegoke", "Ademayowa", "Ademola", "Adeniyan", "Adeoluwa", "Aderinsola", "Aderonke", "Adesina", "Adewale", "Adewunmi", "Adewura", "Adeyemo", "Afolabi", "Afunku", "Agboola", "Agnes", "Aigbiniode", "Ajakaiye", "Ajose-adeogun", "Akeem-omosanya", "Akerele", "Akintade", "Aligbe", "Amaechi", "Aminat", "Aremu", "Atanda", "Ayisat", "Ayobami", "Ayomide", "Babalola", "Babatunde", "Balogun", "Bamisebi", "Bello", "Busari", "Chibike", "Chibuike", "Chidinma", "Chidozie", "Christian", "Clare", "David", "Ebubechukwu", "Egbochukwu", "Ehigiator", "Ekwueme", "Elebiyo", "Elizabeth", "Emmanuel", "Esther", "Funmilayo", "Gbadamosi", "Gbogboade", "Grace", "Habeeb", "Hanifat", "Isaac", "Ismail", "Isokun", "Israel", "Iyalla", "Jamiu", "Jimoh", "Joshua", "Justina", "Katherine", "Kayode", "Kimberly", "Ladega", "Latifat", "Lawal", "Leonard", "Makuachukwu", "Maryam", "Maryjane", "Mayowa", "Miracle", "Mobolaji", "Mogbadunade", "Motalo", "Muinat", "Mukaram", "Mustapha", "Mutiat", "Ndukwu", "Ngozi", "Nojeem", "Nwachukwu", "Nwogu", "Nwuzor", "Obiageli", "Obianuju", "Odunayo", "Ogunbanwo", "Ogunwande", "Okonkwo", "Okunola", "Oladeji", "Oladimeji", "Olaoluwa", "Olasunkanmi", "Olasunkanmi-fasayo", "Olawale", "Olubukola", "Olubunmi", "Olufeyikemi", "Olumide", "Olutola", "Oluwakemi", "Oluwanisola", "Oluwaseun", "Oluwaseyi", "Oluwashina", "Oluwatosin", "Omobolaji", "Omobolanle", "Omolara", "Omowale", "Onohinosen", "Onose", "Onyinyechukwu", "Opeyemi", "Osuagwu", "Oyebola", "Oyelude", "Oyinkansola", "Peter", "Sabdat", "Saheed", "Salami", "Samuel", "Sanusi", "Sarah", "Segunmaru", "Sekinat", "Sulaimon", "Sylvester", "Taiwo", "Tamunoemi", "Tella", "Temitope", "Tolulope", "Uchechi", "Wasiu", "Wilcox", "Wuraola", "Yaqub", "Yussuf" };

pub const last_name_pattern = [_]NamePattern{ .{ .value = "{{person.last_name}}", .weight = 95 }, .{ .value = "{{person.last_name}}-{{person.last_name}}", .weight = 5 } };

pub const male_first_name = [_][]const u8{ "Abimbola", "Abisola", "Abisoye", "Adeboye", "Adedayo", "Adegoke", "Akande", "Akanni", "Alade", "Ayinde", "Azubuike", "Banji", "Bankole", "Buchi", "Bukola", "Chinedu", "Chisom", "Chukwu", "Damilare", "Damilola", "Danjuma", "Ebiowei", "Emeka", "Emmanuel", "Esse", "Funmilade", "Funmilayo", "Gbeminiyi", "Gbemisola", "Habiba", "Ifeanyichukwu", "Ikenna", "Ikhidie", "Ireti", "Jadesola", "Johnson", "Kayode", "Kemi", "Kubra", "Kubura", "Lolade", "Makinwa", "Mohammed", "Musa", "Muyiwa", "Nnamdi", "Olaide", "Olufunmi", "Olumide", "Oluwunmi", "Onoriode", "Remilekun", "Rotimi", "Shade", "Shalewa", "Sname", "Tari", "Temitope", "Titilope", "Tobiloba", "Toke", "Tomiloba", "Tope", "Uzodimma", "Wale", "Yakubu", "Yusuf" };

pub const name = [_]NamePattern{ .{ .value = "{{person.firstName}} {{person.lastName}}", .weight = 1 }, .{ .value = "{{person.lastName}} {{person.firstName}}", .weight = 1 } };