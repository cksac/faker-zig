pub const building_number = [_][]const u8{"Bloc ##"};

pub const city_name = [_][]const u8{ "București", "Cluj-Napoca", "Timișoara", "Iași", "Constanța", "Craiova", "Brașov", "Galați", "Ploiești", "Oradea", "Brăila", "Arad", "Pitești", "Sibiu", "Bacău", "Târgu Mureș", "Baia Mare", "Buzău", "Botoșani", "Satu Mare", "Râmnicu Vâlcea", "Drobeta-Turnu Severin", "Suceava", "Piatra Neamț", "Târgu Jiu", "Târgoviște", "Focșani", "Bistrița", "Reșița", "Tulcea", "Călărași", "Alba Iulia", "Giurgiu", "Deva", "Hunedoara", "Zalău", "Sfântu Gheorghe", "Bârlad", "Vaslui", "1387", "Slobozia", "Turda", "Mediaș", "Voluntari", "Lugoj", "Medgidia", "Onești", "Miercurea Ciuc", "Sighetu Marmației", "Petroșani", "Mangalia", "Tecuci", "Râmnicu Sărat", "Pașcani", "Dej", "Reghin", "Năvodari", "Odorheiu Secuiesc", "Câmpina", "Mioveni", "Câmpulung", "Caracal", "Săcele", "Făgăraș", "Fetești", "Sighișoara", "Borșa", "Roșiorii de Vede", "Curtea de Argeș", "Sebeș", "Huși", "Fălticeni", "Pantelimon", "Oltenița", "Turnu Măgurele", "Caransebeș", "Dorohoi", "Rădăuți", "Zărnești", "Lupeni", "Aiud", "Petrila", "Buftea", "Moinești", "Târnăveni", "Câmpia Turzii", "Popești-Leordeni", "Gherla", "Carei", "Cugir", "Blaj", "Codlea", "Comănești", "Târgu Neamț", "Motru", "Târgu Secuiesc", "Moreni", "Gheorgheni", "Băicoi", "Orăștie", "Salonta", "Balș", "Drăgășani", "Băilești", "Calafat", "Filiași", "Cernavodă", "Câmpulung Moldovenesc", "Breaza", "Marghita", "Baia Sprie", "Luduș", "Corabia", "Adjud", "Vișeu de Sus", "Bragadiru", "Bocșa", "Râșnov", "Urziceni", "Pucioasa", "Vatra Dornei", "Cisnădie", "Mizil", "Toplița", "Chitila", "Șimleu Silvaniei", "Buhuși", "Vicovu de Sus", "Zimnicea", "Găești", "Gura Humorului", "Otopeni", "Ocna Mureș", "Avrig", "Simeria", "Pecica", "Dăbuleni", "Bolintin-Vale", "Rovinari", "Comarnic", "Vălenii de Munte", "Sânnicolau Mare", "Dărmănești", "Moldova Nouă", "Târgu Lăpuș", "Săcueni", "Videle", "Scornicești", "Boldești-Scăeni", "Sântana", "Târgu Ocna", "Măgurele", "Călan", "Beclean", "Țăndărei", "Sovata", "Oravița", "Jibou", "Urlați", "Hârlău", "Beiuș", "Ianca", "Jimbolia", "Topoloveni", "Drăgănești-Olt", "Sinaia", "Nehoiu", "Covasna", "Negrești-Oaș", "Strehaia", "Dolhasca", "Orșova", "Valea lui Mihai", "Murfatlar", "Aleșd", "Darabani", "Cristuru Secuiesc", "Flămânzi", "Mărășești", "Sângeorz-Băi", "Liteni", "Târgu Frumos", "Titu", "Hațeg", "Oțelu Roșu", "Ineu", "Năsăud", "Huedin", "Odobești", "Hârșova", "Bumbești-Jiu", "Seini", "Salcea", "Podu Iloaiei", "Eforie", "Uricani", "Baraolt", "Bușteni", "Tășnad", "Iernut", "Agnita", "Babadag", "Băbeni", "Târgu Cărbunești", "Negrești", "Recaș", "Siret", "Măcin", "Chișineu-Criș", "Plopeni", "Mihăilești", "Șomcuta Mare", "Fieni", "Întorsura Buzăului", "Călimănești", "Panciu", "Nădlac", "Zlatna", "Pătârlagele", "Cehu Silvaniei", "Amara", "Budești", "Anina", "Dumbrăveni", "Câmpeni", "Pogoanele", "Tăuții-Măgherăuș", "Tismana", "Curtici", "Techirghiol", "Sărmașu", "Vlăhița", "Cajvana", "Săveni", "Segarcea", "Pâncota", "Răcari", "Făget", "Tălmaciu", "Buziaș", "Fundulea", "Murgeni", "Teiuș", "Însurăței", "Bicaz", "Târgu Bujor", "Ștei", "Lehliu Gară", "Horezu", "Deta", "Slănic", "Piatra-Olt", "Ardud", "Bălan", "Sebiș", "Brezoi", "Potcoava", "Gătaia", "Novaci", "Miercurea Nirajului", "Baia de Aramă", "Copșa Mică", "Vânju Mare", "Sângeorgiu de Pădure", "Geoagiu", "Săliște", "Ciacova", "Rupea", "Milișăuți", "Isaccea", "Abrud", "Fierbinți-Târg", "Cavnic", "Săliștea de Sus", "Băile Herculane", "Bălcești", "Berbești", "Ghimbav", "Predeal", "Țicleni", "Azuga", "Aninoasa", "Bucecea", "Băile Olănești", "Slănic Moldova", "Miercurea Sibiului", "Sulina", "Baia de Arieș", "Făurei", "Ocna Sibiului", "Bechet", "Căzănești", "Ocnele Mari", "Berești", "Borsec", "Băile Govora", "Vașcău", "Nucet", "Solca", "Băile Tușnad" };

pub const city_pattern = [_][]const u8{"{{location.city_name}}"};

pub const county = [_][]const u8{ "Alba", "Arad", "Arges", "Bacau", "Bihor", "Bistrita-Nasaud", "Botosani", "Braila", "Brasov", "Bucuresti", "Buzau", "Calarasi", "Caras-Severin", "Cluj", "Constanta", "Covasna", "Dambovita", "Dolj", "Galati", "Giurgiu", "Gorj", "Harghita", "Hunedoara", "Ialomita", "Iasi", "Ilfov", "Maramures", "Mehedinti", "Mures", "Neamt", "Olt", "Prahova", "Salaj", "Satu-Mare", "Sibiu", "Suceava", "Teleorman", "Timis", "Tulcea", "Valcea", "Vaslui", "Vrancea" };

pub const default_country = [_][]const u8{"România"};

pub const postcode = [_][]const u8{"######"};

pub const secondary_address = [_][]const u8{ "Ap. ##", "Ap. ###" };

pub const state = [_][]const u8{ "Alba", "Arad", "Arges", "Bacau", "Bihor", "Bistrita-Nasaud", "Botosani", "Braila", "Brasov", "Bucuresti", "Buzau", "Calarasi", "Caras-Severin", "Cluj", "Constanta", "Covasna", "Dambovita", "Dolj", "Galati", "Giurgiu", "Gorj", "Harghita", "Hunedoara", "Ialomita", "Iasi", "Ilfov", "Maramures", "Mehedinti", "Mures", "Neamt", "Olt", "Prahova", "Salaj", "Satu-Mare", "Sibiu", "Suceava", "Teleorman", "Timis", "Tulcea", "Valcea", "Vaslui", "Vrancea" };

pub const state_abbr = [_][]const u8{ "AB", "AR", "AG", "BC", "BH", "BN", "BT", "BR", "BV", "B", "BZ", "CL", "CS", "CJ", "CT", "CV", "DB", "DJ", "GL", "GR", "GJ", "HR", "HD", "IL", "IS", "IF", "MM", "MH", "MS", "NT", "OT", "PH", "SJ", "SM", "SB", "SV", "TR", "TM", "TL", "VL", "VS", "VN" };

pub const street_address = .{ .normal = "{{location.street}}, {{location.buildingNumber}}", .full = "{{location.street}}, {{location.buildingNumber}}, {{location.secondaryAddress}}" };

pub const street_name = [_][]const u8{ "Capalna", "Gheorghe Duca", "Acvila", "Lisabona", "Campulung", "Ilie Gurita", "Succesului", "Siret", "Mihai Viteazul", "Complexului", "Chihlimbarului", "Prahova", "George Cosbuc", "Bobalna", "Eroina De La Jiu", "Cucuzel Ion", "Sergent Turturica", "Timisul De Sus", "Tuberozelor", "Rulmentului", "Soldat Polosca Tanase", "Nabucului", "Flautului", "Poiana Codrului", "Daia", "Soldat Dima Dumitru", "Bulandra Tony", "Pastravilor", "Eternitatii", "Tufanilor", "Discului", "Garnitei", "Costaforu", "Aerogarii", "Preluca", "Delureni", "Soldat Velicu Stefan", "Ocalei", "Calboranu George", "Cercelus", "Timocului", "Alexandru Locusteanu", "Pumnul Aron", "Migdalului", "Valului", "Inginer Radu Elie", "Cricovului", "Mavrogheni", "Bauxitei", "Movilitei", "Pictor Hentia Sava", "Abus", "Fieni", "Zambetului", "Izvorul Muresului", "Rolei", "Utiesului", "Gheorghe Popescu", "Radulescu Drumea", "Sacele", "Soimarestilor", "Romeo", "Voicesti", "Carada Eugeniu", "Barometrului", "Tudorache Gheorghe", "Morii", "Jules Michelet", "Nicolae G. Caranfil", "Sergent Anghel Gheorghe", "Reconstructiei", "Vespasian", "Tincani", "Stirbei Voda", "Ariesu Mare", "Penelului", "Piscul Vechi", "Natiunile Unite", "Doctor Tanasescu Ion", "Stefan Greceanu", "Banul Scarlat", "Crinului", "Domnita Florica", "Plutonier Nita Ion", "Soldat Ionita Stere", "Rovine", "Tropicelor", "Matei Millo", "Veronica Micle", "Pictor Iser Iosif", "Mitropolit Nifon", "Locotenent Victor Manu", "Studioului", "Piatra Morii", "Valea Lupului", "Episcop Chesarie", "Sergent Major Drag Marin", "Bega", "Dobrun", "Fulgeresti" };

pub const street_pattern = [_][]const u8{"{{location.street_suffix}} {{location.street_name}}"};

pub const street_suffix = [_][]const u8{ "Aleea", "Bulevardul", "Intrarea" };