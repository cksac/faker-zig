pub const building_number = [_][]const u8{ "#####", "####", "###" };

pub const city_name = [_][]const u8{ "مكة", "المدينة", "القاهرة", "جدة", "تونس", "طرابلس", "بيروت", "الإسكندرية", "بنغازي", "صفاقس", "مراكش", "الدار البيضاء", "غرناطة", "فاس", "وهران", "الجزائر", "الخرطوم", "مقديشو", "القدس", "غزة", "جنين", "نابلس", "دمشق", "بغداد", "البصرة", "صلاح الدين", "الكوفة", "عمان", "صنعاء", "حضرموت", "المنامة", "صيدا", "بنزرت", "سوسة", "نابل", "الحمامات", "جربة", "حلب", "الرياض", "الدّمام", "أبها", "جازان", "القطيف", "الدرعية", "عُنيزة", "نجد", "رابغ", "دبي", "العين", "رأس الخيمة", "أبو ظبي", "عجمان", "الفجيرة", "الرويس", "مصفح", "دوز", "السلع", "الرحبة", "الجهراء", "الكويت", "الفرْوانية", "حَوَلِّـي", "الأحمدي", "الدوحة", "الريان", "دخان", "الخور", "أبو الظلوف", "العريش", "الغنيم", "الغرية", "الموصل", "أربيل", "نينوى", "الأنبار", "الحلة", "سامراء", "ذي قار", "بابل", "واسط", "القادسية", "العقبة", "الكرك", "إربد", "عنجرة", "المفرق", "الفحيص", "أريحا", "يافا", "عكا", "رام الله", "بيت لحم", "الرملة", "بيسان", "صفد", "قلقيلية", "طولكرم", "بيت حانون", "صور", "بعلبك", "مرجعيون", "عنجر", "الخيام", "الشرقية", "حمص", "اللاذقية", "تدمر", "حماة", "طرسوس", "بصرى", "معرة النعمان", "دير الزور", "داريا", "دوما", "التل", "إدلب", "عدن", "مأرب", "إب", "عمران", "الشحر", "البيضاء", "بيحان", "يريم", "تريم", "معبر", "الضالع", "بورسعيد", "أسيوط", "الأقصر", "أسوان", "المنيا", "سوهاج", "دمياط", "قنا", "سبك الأحد", "نواكشوط", "شمقيط", "وادان", "دورا" };

pub const city_pattern = [_][]const u8{"{{location.city_name}}"};

pub const country = [_][]const u8{ "أفغانستان", "ألبانيا", "الجزائر", "أمريكا ساماو", "أندورا", "أنجولا", "أنجويلا", "أنتاركتيكا", "أنتيغوا وباربودا", "الأرجنتين", "أرمينيا", "أروبا", "أرستراليا", "أستريا", "أذرابيجان", "بهماس", "البحرين", "بنغلادش", "بربادوس", "بلاروسيا", "بلجيكا", "بليز", "بينين", "برمودا", "بوتان", "بوليفيا", "البوسنة والهرسك", "بوتسوانا", "جزيرة بوفيه", "البرازيل", "إقليم المحيط الهندي البريطاني", "برونوي دار السلام", "بلغاريا", "بوركينا فاسو", "بوروندي", "كمبوديا", "كاميرون", "كندا", "الرأس الأخضر", "جزر كايمان", "جمهورية إفريقيا الوسطى", "التشاد", "شيلي", "الصين", "جزيرة عيد الميلاد", "جزر كوكوس", "كولومبيا", "جزر القمر", "كونجو", "جزر كوك", "كوستا ريكا", "ساحل العاج", "كرواتيا", "كوبا", "قبرص", "التشيك", "دنمارك", "جيبوتي", "دومينيكا", "جمهورية الدومينيكان", "إكوادور", "مصر", "السلفادور", "غينيا الاستوائية", "إريتريا", "إستونيا", "أثيوبيا", "جزر فارو", "جزر فوكلاند", "فيجي", "فلندا", "فرنست", "غويانا الفرنسية", "بولينزيا الفرنسية", "أراض فرنسية جنوبية وأنتارتيكية", "جابون", "غمبيا", "جورجيا", "ألمانيا", "غانا", "جبل طارق", "اليونان", "الأرض الخضراء", "غرينادا", "غوادلوب", "غوام", "غواتيمالا", "غيرنزي", "غينيا", "غينيا بيساو", "غيانا", "هايتي", "جزيرة هيرد وجزر ماكدونالد", "الفاتيكان", "هندوراس", "هونكونغ", "هنقاريا", "إسلاند", "الهند", "أندونيسيا", "إيران", "العراق", "إيرلامدا", "جزيرة مان", "إيطاليا", "جامايكا", "اليابان", "جيرزي", "الأردن", "كازاخستان", "كنيا", "كيريباتي", "كوريا الشمالية", "كوريا الجنوبية", "الكويت", "قيرغيزستان", "لاوس", "لتفيا", "لبنان", "ليسوتو", "ليبيريا", "ليبيا", "ليختنشتاين", "ليتيواتيا", "ليكسمبورغ", "ماكاو", "مقدونيا", "مدغشقر", "ملاوي", "ماليزيا", "ملديف", "مالي", "مالطا", "جزر مارشال", "مارتينيك", "موريتانيا", "موريشيوس", "مايوت", "المكسيك", "ولايات ميكرونيسيا المتحدة", "مولدوفا", "موناكو", "منغوليا", "مونتينيغرو", "مونتسرات", "المغرب", "موزنبيق", "ميانمار", "ناميبيا", "ناورو", "نيبال", "جزر الأنتيل الهولندية", "هولاندا", "كالودونيا الجديدة", "زيلاندا الجديدة", "نيكاراغوا", "النيجر", "نيجيريا", "نييوي", "جزيرة نورفولك", "جزر ماريانا الشمالية", "نورواي", "عمان", "باكستان", "بالاو", "فلسطين", "بانما", "بابوا غينيا الجديدة", "باراغواي", "بيرو", "الفيليبين", "جزر بيتكيرن", "بولندا", "البرتغال", "بورتو ريكو", "قطر", "لا ريونيون", "رومانيا", "روسيا", "روندا", "سان بارتيلمي", "سانت هيلانة", "سانت كيتس ونيفيس", "سانت لوسيا", "سانت نرتان", "سان بيير وميكلون", "سانت فينسنت والغرينادين", "ساماو", "سان مارينو", "ساو تومي وبرينسيب", "السعودية", "السنغال", "صربيا", "سيشال", "سيراليون", "سنغفورة", "سلوفاكيا", "سلوفينيا", "جزر سليمان", "الصومال", "جنوب إفريقيا", "جورجيا الجنوبية وجزر ساندويتش الجنوبية", "إسبانيا", "سيري لانكا", "السودان", "سيرينام", "سفالبارد ويان ماين", "سوازيلاند", "السويد", "سويسرا", "سوريا", "تايوات", "طاجكستان", "تنزانيا", "تايلاند", "تيمور الشرقية", "توغو", "توكيلاو", "تونغوا", "ترينيداد وتوباغو", "تونس", "تركيا", "تركمنستان", "جزر توركس وكايكوس", "توفالو", "أوغندا", "أكرانيا", "الإمارات العربية المتحدة", "بريطانيا", "أمريكا", "جزر الولايات المتحدة الصغيرة النائية", "أرغواي", "أزباكستان", "فانواتو", "فينيزويلا", "فيتنام", "جزر العذراء البريطانية", "جزر العذراء الأمريكية", "واليس وفوتونا", "اليمن", "زمبيا", "زمبابوي" };

pub const default_country = [_][]const u8{"المملكة العربية السعودية"};

pub const postcode = [_][]const u8{ "#####", "#####-####" };

pub const secondary_address = [_][]const u8{ "### عمارة", "### طابق", "### شقة", "### بناية", "### بيت" };

pub const state = [_][]const u8{ "القدس", "تل الربيع", "صفد", "أريحا", "بئر السبع", "غزة", "نابلس", "الناصرة", "بيت لحم", "الخليل", "يافا", "حيفا", "اللد", "الرملة", "عكا", "سخنين", "قلنسوة", "طيرة", "عرابة", "رام الله", "طولكرم", "بئر السبع ", "تونس", "بن عروس", "أريانة", "باجة", "بنزرت", "قابس", "قفصة", "جندوبة", "القيروان", "القصرين", "قبلي", "الكاف", "المهدية", "منوبة", "مدنين", "المنستير", "نابل", "صفاقس", "بوزيد", "سليانة", "سوسة", "تطاوين", "توزر", "زغوان", "أدرار", "الشلف", "الأغواط", "أم البواقي", "باتنة", "بجاية", "بسكرة", "بشار", "البليدة", "البويرة", "تمنراست", "تبسة", "تلمسان", "تيارت", "تيزي وزو", "الجزائر", "الجلفة", "جيجل", "سطيف", "سعيدة", "سكيكدة", "بلعباس", "عنابة", "قالمة", "قسنطينة", "المدية", "عمان", "الزرقاء", "إربد", "العقبة", "السلط", "المفرق", "جرش", "معان", "عجلون", "حلب", "دمشق", "حمص", "اللاذقية", "حماة", "طرطوس", "دير الزور", "السويداء", "الحسكة", "درعا", "إدلب", "بيروت", "طرابلس", "صيدا", "صور", "النبطية", "زحلة", "جونيه", "حبوش", "بعلبك", "بغداد", "البصرة", "نينوى", "أربيل", "النجف", "كركوك", "المثنى", "القادسية", " بابل", "كربلاء" };

pub const street_address = .{ .normal = "{{location.buildingNumber}} {{location.street}}", .full = "{{location.buildingNumber}} {{location.street}} {{location.secondaryAddress}}" };

pub const street_pattern = [_][]const u8{ "{{location.street_prefix}} {{person.first_name}}", "{{location.street_prefix}} {{person.last_name}}" };

pub const street_prefix = [_][]const u8{ "درب، طريق", "شارع", "سبيل", "جادة", "رصيف", "مَمَر", "طريق مسدود", "ساحة" };