pub const building_number = [_][]const u8{ "#", "##", "###" };

pub const city_name = [_][]const u8{ "Beograd", "Bor", "Jagodina", "Kikinda", "Kraljevo", "Kruševac", "Leskovac", "Niš", "Novi Pazar", "Novi Sad", "Pančevo", "Paraćin", "Pirot", "Požarevac", "Prokuplje", "Smederevo", "Sombor", "Sopot", "Sremska Mitrovica", "Subotica", "Užice", "Vranje", "Vršac", "Zaječar", "Zrenjanjin", "Čačak", "Šabac" };

pub const city_pattern = [_][]const u8{"{{location.city_name}}"};

pub const country = [_][]const u8{ "Avganistan", "Albanija", "Alžir", "Američka Samoa", "Andora", "Angola", "Anguila", "Antarktika", "Antigua i Barbuda", "Argentina", "Armenija", "Aruba", "Australija", "Austrija", "Azerbajdžan", "Bahami", "Bahrein", "Bangladeš", "Barbados", "Belorusija", "Belgija", "Belize", "Benin", "Bermuda", "Butan", "Bolivija", "Bonaire", "Bosna i Hercegovina", "Bocvana", "Ostrvo Bouvet", "Brazil", "Bruneji", "Bugarska", "Burikina Faso", "Burundi", "Kambodža", "Kameron", "Kanada", "Zelenortska Republika", "Kajmanska Ostrva", "Srednjoafrička Republika", "Čad", "Čile", "Kina", "Božićna Ostrva", "Keeling Ostrva", "Kolumbija", "Komori", "Kongo", "Demokratska Republika Kongo", "Cookova Ostrva", "Kostarika", "Hrvatska", "Kuba", "Curacao", "Kipar", "Češka", "Obala Slonovače", "Danska", "Džibuti", "Dominika", "Dominikanska Republika", "Ekvador", "Egipat", "Salvador", "Ekvatorijalna Gvineja", "Eritreja", "Estonija", "Etiopija", "Falkandska Ostrva", "Farska Ostrva", "Fidži", "Finska", "Francuska", "Francuska Gvajana", "Francuska Polinezija", "Južni Francuski Teritoriji", "Gabon", "Gambija", "Gruzija", "Nemačka", "Gana", "Gibraltar", "Grčka", "Grenland", "Grenada", "Guadelupe", "Guam", "Gvatemala", "Guernsey", "Gvineja", "Gvineja Bisau", "Gvajana", "Haiti", "Holandija", "Ostvro Heard i Ostrvo McDonald", "Vatikan", "Honduras", "Hong Kong", "Mađarska", "Island", "Indija", "Indonezija", "Iran", "Irak", "Irska", "Isle of Man", "Izrael", "Italija", "Jamajka", "Japan", "Jersey", "Jordan", "Kazahstan", "Kenija", "Kiribati", "DNR Koreja", "Rebublika Koreja", "Kuvajt", "Krigistan", "Laos", "Latvija", "Libanon", "Lesoto", "Liberija", "Libija", "Lihtenštajn", "Litvanija", "Luksmburg", "Makao", "Makedonija", "Madagaskar", "Malavi", "Malezija", "Maldivi", "Mali", "Malta", "Maršalovi", "Martinik", "Mauritanija", "Mauricijus", "Mayotte", "Meksiko", "Mikronezija", "Moldavija", "Monako", "Mongolija", "Crna Gora", "Monteserat", "Maroko", "Mozambik", "Mjanmar", "Namibija", "Nauru", "Nepal", "Nova Kaledonija", "Novi Zeland", "Nikaragva", "Niger", "Nigerija", "Niue", "Norfolk", "Severna Marijanska Ostrva", "Norveška", "Oman", "Pakistan", "Palau", "Palestina", "Panama", "Papua Nova Gvineja", "Paragvaj", "Peur", "Filipini", "Pitcairn", "Poljska", "Portugal", "Portoriko", "Katar", "Rumunija", "Ruska Federacija", "Ruanda", "Reunion", "Sveti Bartolomej", "Sveta Helena", "Sveti Kitts i Nevis", "Sveta Lucija", "Sveti Martin (fr. deo)", "Sveti Petar i Miquelon", "Sveti Vincent i Grenadini", "Samoa", "San Marino", "Sveti Toma i Princip", "Saudijska Arabija", "Senegal", "Srbija", "Sejšeli", "Siera Leone", "Singapur", "Sveti Martin (hol.deo)", "Slovačka", "Slovenija", "Salomoska Ostrva", "Somalija", "Južna Afrika", "Južna Georgia i južni Sandwich", "Južni Sudan", "Španija", "Šri Lanka", "Sudan", "Surinam", "Svalvard i Jan Mayen", "Swaziland", "Švedska", "Švajcarska", "Sirija", "Tajvan", "Tadžikistan", "Tanaznija", "Tajland", "Istočni Timor", "Togo", "Tokelau", "Tonga", "Trinidad i Tobago", "Tunis", "Turska", "Turkmenistan", "Ostrva Turks i Caicos", "Tuvalu", "Uganda", "Ukrajina", "Ujedinjeni Arapski Emirati ", "Ujedinjeno Kraljevstvo", "Sjedinjenje Američke Države", "Urugvaj", "Uzbekistan", "Vanuatu", "Venecuela", "Vietnam", "Britanska Devičanska Ostrva", "Američka Devičanska Ostrva", "Wallis i Futuna", "Zapadna Sahara", "Jemen", "Zambija", "Zimbabve" };

pub const default_country = [_][]const u8{"Srbija"};

pub const postcode = [_][]const u8{"#####"};

pub const secondary_address = [_][]const u8{ "Sprat #", "Stan ##" };

pub const state = [_][]const u8{ "Borski okrug", "Braničevski okrug", "Grad Beograd", "Zaječarski okrug", "Zapadnobački okrug", "Zlatiborski okrug", "Jablanički okrug", "Južnobanatski okrug", "Južnobački okrug", "Kolubarski okrug", "Kosovski okrug", "Kosovskomitrovački okrug", "Kosovskopomoravski okrug", "Mačvanski okrug", "Moravički okrug", "Nišavski okrug", "Pećki okrug", "Pirotski okrug", "Podunavski okrug", "Pomoravski okrug", "Prizrenski okrug", "Pčinjski okrug", "Rasinski okrug", "Raški okrug", "Severnobanatski okrug", "Severnobački okrug", "Srednjobanatski okrug", "Sremski okrug", "Toplički okrug", "Šumadijski okrug" };

pub const street_address = .{ .normal = "{{location.street}} {{location.buildingNumber}}", .full = "{{location.street}} {{location.buildingNumber}} {{location.secondaryAddress}}" };

pub const street_name = [_][]const u8{ "1. sokače", "1300 kaplara", "14. decembra", "16. oktobra", "2. sokače", "20. oktobra", "21. divizije", "21. maja", "22. oktobra", "23. srpske udarne divizije", "27. marta", "29. novembra", "3. sokače", "4. sokače", "5. sokače", "6. Ličke divizije", "6. aprila", "6. sokače", "7. jula", "7. sokače", "8. sokače", "Abardareva", "Alaska", "Albanska", "Albanske spomenice", "Aleksandra Deroka", "Aleksandra Fleminga", "Aleksandra Glišića", "Aleksandra Stambolijskog", "Auto put Beograd Novi Sad", "Avde Karabegovića", "Baba Višnjina", "Bagremova", "Bajdina", "Baje Sekulića", "Bajronova", "Bakarska", "Bakićeva", "Balkanska", "Baltička", "Balšina", "Bana Ivaniša", "Bana Mladena", "Banatska", "Banijska", "Belička", "Belog bagrema", "Belokrajjnska", "Belopalanačka", "Beogradska", "Bilećka", "Bogoboja Atanackovića", "Bogojavljenska", "Bogoljuba čukića", "Bojadžijska", "Bokeljska", "Bosanska", "Bose Milićević", "Bože Jankovića", "Božice Divnić", "Božidara Adžije", "Bulevar AVNOJa", "Bulevar Arsenija Čarnojevića", "Bulevar Mira", "Bulevar Vojvode Bojovića", "Bulevar Vojvode Mišića", "Bulevar Vojvode Putnika", "Bulevar kralja Aleksandra", "Bulevar umetnosti", "Camblakova", "Cankareva", "Cara Dušana", "Cara Lazara", "Carice Milice", "Cavtatska", "Cerska", "Cetinjska", "Crnogorska", "Crnojevića", "Crnotravska", "Cvetanova ćuprija", "Cvetna", "Cvećarska", "Cvijićeva", "Daljska", "Dalmatinska", "Danice Marković", "Danijelova", "Danila Bojovića", "Danila Ilića", "Danila Kiša", "Daruvarska", "Davida Pajića", "Debarska", "Deligradska", "Despota Stefana", "Devojačka", "Dimitrija Koturovića", "Donja", "Dositejeva", "Dr Agostina Neta", "Dr Ivana Ribara", "Dr Izabele Haton", "Dr Jovana Danića", "Dr Rozali Morton", "Drage Ljočić", "Drage Spasić", "Dragoslava Srejovića", "Džona Kenedija", "Egejska", "Elija Fincija", "Emila Zole", "Emilijana Joksimovića", "Fabrisova", "Filipa Višnjića", "Finžgarova", "Frana Levstika", "France Prešerna", "Francuska", "Fruškogorska", "Galipoljska", "Gandijeva", "Garibaldijeva", "Garsije Lorke", "Gastona Gravijea", "General Živka Pavlovića", "Generala Aračića", "Generala Ždanova", "Geteova", "Glamočka", "Gligorija Vozarovića", "Golijska", "Golsvortijeva", "Gorenjska", "Gornja", "Gospodar Jevremova", "Gospodar Jovanova", "Gostivarska", "Gragorčićeva", "Gramšijeva", "Gračanička", "Gruje Miškovića", "Grčića Milenka", "Gundulićev venac", "Guslarska", "Hadži Milentijeva", "Hadži Prodanova", "Hadži Ruvimova", "Hadži Đerina", "Hajduk Stankova", "Hajima Davića", "Hanibala Lucića", "Hercegovačka", "Heroja Milana Tepića", "Husinskih rudara", "Hvarska", "Idvorska", "Igmanska", "Ignjata Joba", "Ilije Garašanina", "Ilirska", "Imotska", "Indire Gandi", "Internacionalnih brigada", "Isidore Sekulić", "Ivana Milutinovića", "Ivana Mičurina", "Ivanovačka", "Ivice Devčića", "Ivićeva", "Izletnička", "Izvorska", "Jablanička", "Jabučka", "Jakuba Kuburovića", "Jana Kolara", "Janković Stojana", "Jasenička", "Jaše Prodanovića", "Jefimijina", "Jerneja Kopitara", "Jerusalimska", "Jezdićeva", "Jirečekova", "Jonska", "Jovana Avakumovića", "Jovana Mikića", "Jovana Trajkovića", "Kajuhova", "Kalenićeva", "Karamatina", "Karađorđev trg", "Karla Lukača", "Karlovačka", "Karnedžijeva", "Katanićeva", "Katarine Milovuk", "Katićeva", "Kačanička", "Kedrova", "Kej oslobođenja", "Kijevska", "Kirovljeva", "Klanačka", "Klare Cetkin", "Kneza Miloša", "Kninska", "Kolarčeva", "Komovska", "Kondina", "Konovljanska", "Kopernikova", "Kosančićev venac", "Kosmajska", "Kosovska", "Koste Trifkovića", "Kostolačka", "Kovačka", "Kozjačka", "Kragujevačkih đaka", "Kritska", "Krivolačka", "Krušedolska", "Kruševačka", "Kumanovska", "Kursulina", "Kuršumlijska", "Ladno brdo", "Lazara Savatića", "Laze Kostića", "Lenjinov Bulevar", "Lepenička", "Limska", "Lipovačka", "Listopadna", "Ljermontova", "Ljube Šercera", "Lole Ribara", "Lopudska", "Lovačka", "Lošinjska", "Luja Adamiča", "Lukijana Mušitskog", "Magelanova", "Maglajska", "Majdanpečka", "Majke Jevrosime", "Marijane Gregoran", "Marije Bursać", "Marička", "Marka Oreškovića", "Marka Pola", "Marulićeva", "Maršala Birjuzova", "Mažuranićeva", "Metohijska", "Mihaila Đurića", "Mike Alasa", "Milana Premasunca", "Milana Rakića", "Mile Dimić", "Milice Srpkinje", "Miloja Đaka", "Miloša Pocerca", "Milunke Savić", "Milutina Bojića", "Milutina Milankovića", "Mirijevski Bulevar", "Miročka", "Mite Ružića", "Mitra Bakića", "Mlade Bosne", "Mojkovačka", "Mosorska", "Mostarska", "Moše Pijade", "Murska", "Mutapova", "Nade Dimić", "Nade Naumović", "Nake Spasić", "Namesnika Protića", "Nehruova", "Nemanjina", "Nerodimska", "Neznanog junaka", "Nikolaja Gogolja", "Nikole Grulovića", "Nikole Markovića", "Nikole Ostrovskog", "Nikšićka", "Nićifora Dučića", "Nova Skojevska", "Novakova", "Novogradska", "Novosadska", "Nušićeva", "Obalskih radnika", "Obilićev venac", "Oblakovska", "Obrenovački put", "Ognjena Price", "Ohridska", "Olge Alkalaj", "Olge Jovanović", "Omladinska", "Omladinskih brigada", "Opatijska", "Orahova", "Oračka", "Orfelinova", "Orlovska", "Osmana Đikića", "Ozrenska", "Oštreljska", "Pabla Nerude", "Paje Adamova", "Palih boraca", "Palisadska", "Palmira Toljatija", "Palmotićeva", "Pančevački put", "Partizanski put", "Patrisa Lumumbe", "Paunova", "Pavla Papa", "Paštrovićeva", "Pere Velimirovića", "Petra Kočića", "Petra Lekovića", "Pešterska", "Pilota M. Petrovića", "Pinkijeva", "Pionirska", "Pirotska", "Piva Karamatijevića", "Pivljanina Baje", "Plzenska", "Pop Lukina", "Požarevačka", "Požeška", "Prenjska", "Preševska", "Prilepska", "Primorska", "Prokupačka", "Prolomska", "Prote Mateje", "Prvomajska", "Ptujska", "Pukovnika Bacića", "Puškinova", "Radanska", "Rade Končara", "Radivoja Koraća", "Radnička", "Radoja Dakića", "Rajićeva", "Ramska", "Rankeova", "Ratka Mitrovića", "Ravanička", "Reljina", "Ribnička", "Rige od Fere", "Risanska", "Rospi ćuprija", "Rovinjska", "Roze Luksemburg", "Ruska", "Ruzveltova", "Ruđera Boškovića", "Salvadora Aljendea", "Save Jovanovića", "Save Kovačevića", "Save Tekelije", "Savski Trg", "Savski nasip", "Savski venac", "Senjanina Ive", "Serdara Janka Vukotića", "Severni bulevar", "Sime Šolaje", "Simina", "Simonidina", "Siva stena", "Skender begova", "Skerlićeva", "Skver Mire Trailović", "Slanački put", "Slavka Rodić", "Slavoljuba Vuksanovića", "Sokobanjska", "Solunska", "Somborska", "Sonje Marinković", "Sopoćanska", "Srpskih udarnih brigada", "Stanka Paunovića Veljka", "Stevana Opačića", "Stevana Sremca", "Strahinjića Bana", "Strma", "Strumička", "Studentski trg", "Subotička", "Susedgradska", "Svetozara Markovića", "Svrljiška", "Tadeuša Košćuška", "Takovska", "Tamnavska", "Terazije", "Tetovska", "Timočka", "Tiršova", "Todora Dukina", "Tolstojeva", "Treći bulevar", "Trg Nikole Pašića", "Trg Oslobođenja", "Trg Republike", "Trg Slavija", "Trgovačka", "Trogirska", "Trstenjakova", "Tršćanska", "Ubska", "Ugrinovačka", "Uralska", "Uroša Predića", "Uroša Trojanovića", "Uskočka", "Uzun Mirkova", "Učitelja Stojana", "Ušće", "Užička", "Vajara Đoke Jovanovića", "Vardarska", "Vareška", "Vase Pelagića", "Velebitska", "Velike stepenice", "Velizara Stankovića", "Veslina Masleše", "Viktora Igoa", "Viline Vode", "Visoka", "Visokog Stevana", "Vitanovačka", "Višegradska", "Vladete Kovačevića", "Vladimira Popovića", "Vlajkovićeva", "Vodovodska", "Vojvode Stepe", "Vukasovićeva", "Zabrđanska", "Zagorska", "Zaplanjska", "Zeleno brdo", "Zemunska", "Zemunski put", "Zetska", "Zmaj Jovina", "Zvečanska", "Ćirila i Metodija", "Ćukovačka", "Ćustendilska", "Čarlija Čaplina", "Čegarska", "Čelebićka", "Čumićeva", "Đakovačka", "Đerdapska", "Đorđa Jovanovića", "Đure Daničića", "Đure Đakovića", "Šafarikova", "Šantićeva", "Šejkina", "Šekspirova", "Šetalište", "Šilerova", "Školski trg", "Šumatovačka", "Šupljikčeva", "Žabljačka", "Žarka Zrenjanina", "Živka Davidovića", "Živojina Lazića", "Žička" };

pub const street_pattern = [_][]const u8{"{{location.street_name}}"};