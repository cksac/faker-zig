const NamePattern = @import("../../modules/person.zig").NamePattern;

pub const bio_part = [_][]const u8{ "活动家", "艺术家", "作家", "博主", "企业家", "教练", "发明家", "设计师", "开发者", "教育家", "工程师", "企业主", "环保主义者", "电影爱好者", "电影制片人", "美食家", "创始人", "朋友", "玩家", "极客", "毕业生", "创造者", "领导者", "模特", "脑力爱好者", "父母", "爱国者", "个人", "哲学家", "摄影爱好者", "公众演说家", "科学家", "梦想家", "学生", "老师", "旅行家", "退伍军人", "作者" };

pub const bio_pattern = [_][]const u8{ "{{person.bio_part}}", "{{person.bio_part}}，{{person.bio_part}}", "{{person.bio_part}}，{{person.bio_part}}，{{person.bio_part}}", "{{person.bio_part}}，{{person.bio_part}}，{{person.bio_part}}{{internet.emoji}}", "{{word.noun}}{{person.bio_supporter}}", "{{word.noun}}{{person.bio_supporter}}{{internet.emoji}}", "{{word.noun}}{{person.bio_supporter}}，{{person.bio_part}}", "{{word.noun}}{{person.bio_supporter}}，{{person.bio_part}}{{internet.emoji}}" };

pub const bio_supporter = [_][]const u8{ "倡导者", "贡献者", "发烧友", "粉丝", "狂热者", "爱好者", "支持者" };

pub const female_first_name = [_][]const u8{ "秀英", "秀兰", "秀珍", "桂英", "桂兰", "玉兰", "玉珍", "玉英", "玉梅", "凤英", "兰英", "婷婷", "国英", "国珍", "国华", "国芳", "国兰", "国秀", "国琴", "国荣", "国香", "英", "萍", "蒙", "红", "丽", "敏", "芳", "静", "霞", "燕", "娟", "艳", "娜", "丹", "玲", "婷", "珈", "雪", "倩", "悦", "颖", "洁", "慧", "开慧", "丽芬", "丽芳", "丽萍", "若汐", "一诺", "艺涵", "依诺", "梓涵", "梓晨", "梓馨", "梓萱", "梓妍", "梓玥", "苡沫", "雨桐", "欣怡", "语桐", "语汐", "雨涵", "雨欣", "诗雨", "婷方", "美方", "雅婷", "紫林", "天娇", "万佳", "子欣", "海燕", "乙萍", "安琪", "馨羽", "馥君", "思佳", "雅鑫", "静怡", "晨阳", "佳琪", "雯静", "榕融" };

pub const female_prefix = .{};

pub const first_name = [_][]const u8{ "乐驹", "伟宸", "伟泽", "伟祺", "伟诚", "俊驰", "修杰", "修洁", "健柏", "健雄", "凯瑞", "博文", "博涛", "博超", "君浩", "哲瀚", "嘉懿", "嘉熙", "天宇", "天磊", "天翊", "子涵", "子轩", "子骞", "子默", "展鹏", "峻熙", "建辉", "弘文", "彬", "志强", "志泽", "思", "思淼", "思源", "思聪", "思远", "懿轩", "振家", "擎宇", "擎苍", "文", "文博", "文昊", "文轩", "旭尧", "昊天", "昊强", "昊焱", "昊然", "明", "明哲", "明杰", "明轩", "明辉", "晋鹏", "晓博", "晓啸", "晟睿", "智宸", "智渊", "智辉", "果", "梓晨", "楷瑞", "正豪", "泽洋", "浩", "浩宇", "浩然", "浩轩", "涛", "潇然", "炎彬", "炫明", "烨伟", "烨华", "烨磊", "烨霖", "煜城", "煜祺", "熠彤", "琪", "瑞霖", "瑾瑜", "皓轩", "睿渊", "立果", "立诚", "立轩", "立辉", "笑愚", "绍辉", "绍齐", "耀杰", "聪健", "胤祥", "致远", "航", "苑博", "荣轩", "语堂", "越彬", "越泽", "远航", "金鑫", "鑫磊", "鑫鹏", "钰轩", "锦程", "雨泽", "雪松", "靖琪", "风华", "驰", "鸿涛", "鸿煊", "鹏", "鹏涛", "鹏煊", "鹏飞", "鹤轩", "鹭洋", "黎昕", "诗雨", "婷方", "美方", "雅婷", "紫林", "天娇", "万佳", "子欣", "海燕", "乙萍", "安琪", "馨羽", "馥君", "思佳", "雅鑫", "静怡", "晨阳", "佳琪", "雯静", "榕融", "浩辰", "癸霖", "一全", "三锋", "义轩", "俊凯", "子豪", "振东", "智杰", "哲新", "中海", "超栋", "治涛", "治文", "文韬", "敬彪", "敬阳", "政君", "立伟", "呈轩" };

pub const last_name = [_][]const u8{ "赵", "钱", "孙", "李", "周", "吴", "郑", "王", "冯", "陈", "褚", "卫", "蒋", "沈", "韩", "杨", "朱", "秦", "尤", "许", "何", "吕", "施", "张", "孔", "曹", "严", "华", "金", "魏", "陶", "姜", "戚", "谢", "邹", "喻", "柏", "水", "窦", "章", "云", "苏", "潘", "葛", "奚", "范", "彭", "郎", "鲁", "韦", "昌", "马", "苗", "凤", "花", "方", "俞", "任", "袁", "柳", "酆", "鲍", "史", "唐", "费", "廉", "岑", "薛", "雷", "贺", "倪", "汤", "滕", "殷", "罗", "毕", "郝", "邬", "安", "常", "乐", "于", "时", "傅", "皮", "卞", "齐", "康", "伍", "余", "元", "卜", "顾", "孟", "平", "黄", "和", "穆", "萧", "尹", "姚", "邵", "湛", "汪", "祁", "毛", "禹", "狄", "米", "贝", "明", "臧", "计", "伏", "成", "戴", "谈", "宋", "茅", "庞", "熊", "纪", "舒", "屈", "项", "祝", "董", "梁", "杜", "阮", "蓝", "闵", "席", "季", "麻", "强", "贾", "路", "娄", "危", "江", "童", "颜", "郭", "梅", "盛", "林", "刁", "锺", "徐", "邱", "骆", "高", "夏", "蔡", "田", "樊", "胡", "凌", "蹇", "称", "诺", "来", "多", "繁", "戊", "朴", "回", "毓", "税", "荤", "靖", "绪", "愈", "硕", "牢", "买", "但", "巧", "枚", "撒", "泰", "秘", "亥", "绍", "以", "壬", "森", "斋", "释", "奕", "姒", "朋", "求", "羽", "用", "占", "真", "穰", "翦", "闾", "漆", "贵", "代", "贯", "旁", "崇", "栋", "告", "休", "褒", "谏", "锐", "皋", "闳", "在", "歧", "禾", "示", "是", "委", "钊", "频", "嬴", "呼", "大", "威", "昂", "律", "冒", "保", "系", "抄", "定", "化", "莱", "校", "么", "抗", "祢", "綦", "悟", "宏", "功", "庚", "务", "敏", "捷", "拱", "兆", "丑", "丙", "畅", "苟", "随", "类", "卯", "俟", "友", "答", "乙", "允", "甲", "留", "尾", "佼", "玄", "乘", "裔", "延", "植", "环", "矫", "赛", "昔", "侍", "度", "旷", "遇", "偶", "前", "由", "咎", "塞", "敛", "受", "泷", "袭", "衅", "叔", "圣", "御", "夫", "仆", "镇", "藩", "邸", "府", "掌", "首", "员", "焉", "戏", "可", "智", "尔", "凭", "悉", "进", "笃", "厚", "仁", "业", "肇", "资", "合", "仍", "九", "衷", "哀", "刑", "俎", "仵", "圭", "夷", "徭", "蛮", "汗", "孛", "乾", "帖", "罕", "洛", "淦", "洋", "邶", "郸", "郯", "邗", "邛", "剑", "虢", "隋", "蒿", "茆", "菅", "苌", "树", "桐", "锁", "钟", "机", "盘", "铎", "斛", "玉", "线", "针", "箕", "庹", "绳", "磨", "蒉", "瓮", "弭", "刀", "疏", "牵", "浑", "恽", "势", "世", "仝", "同", "蚁", "止", "戢", "睢", "冼", "种", "涂", "肖", "己", "泣", "潜", "卷", "脱", "谬", "蹉", "赧", "浮", "顿", "说", "次", "错", "念", "夙", "斯", "完", "丹", "表", "聊", "源", "姓", "吾", "寻", "展", "出", "不", "户", "闭", "才", "无", "书", "学", "愚", "本", "性", "雪", "霜", "烟", "寒", "少", "字", "桥", "板", "斐", "独", "千", "诗", "嘉", "扬", "善", "揭", "祈", "析", "赤", "紫", "青", "柔", "刚", "奇", "拜", "佛", "陀", "弥", "阿", "素", "长", "僧", "隐", "仙", "隽", "宇", "祭", "酒", "淡", "塔", "琦", "闪", "始", "星", "南", "天", "接", "波", "碧", "速", "禚", "腾", "潮", "镜", "似", "澄", "潭", "謇", "纵", "渠", "奈", "风", "春", "濯", "沐", "茂", "英", "兰", "檀", "藤", "枝", "检", "生", "折", "登", "驹", "骑", "貊", "虎", "肥", "鹿", "雀", "野", "禽", "飞", "节", "宜", "鲜", "粟", "栗", "豆", "帛", "官", "布", "衣", "藏", "宝", "钞", "银", "门", "盈", "庆", "喜", "及", "普", "建", "营", "巨", "望", "希", "道", "载", "声", "漫", "犁", "力", "贸", "勤", "革", "改", "兴", "亓", "睦", "修", "信", "闽", "北", "守", "坚", "勇", "汉", "练", "尉", "士", "旅", "五", "令", "将", "旗", "军", "行", "奉", "敬", "恭", "仪", "母", "堂", "丘", "义", "礼", "慈", "孝", "理", "伦", "卿", "问", "永", "辉", "位", "让", "尧", "依", "犹", "介", "承", "市", "所", "苑", "杞", "剧", "第", "零", "谌", "招", "续", "达", "忻", "六", "鄞", "战", "迟", "候", "宛", "励", "粘", "萨", "邝", "覃", "辜", "初", "楼", "城", "区", "局", "台", "原", "考", "妫", "纳", "泉", "老", "清", "德", "卑", "过", "麦", "曲", "竹", "百", "福", "言", "霍", "虞", "万", "支", "柯", "昝", "管", "卢", "莫", "经", "房", "裘", "缪", "干", "解", "应", "宗", "丁", "宣", "贲", "邓", "单", "杭", "洪", "包", "诸", "左", "石", "崔", "吉", "钮", "龚", "程", "嵇", "邢", "滑", "裴", "陆", "荣", "翁", "荀", "羊", "於", "惠", "甄", "麴", "家", "封", "芮", "羿", "储", "靳", "汲", "邴", "糜", "松", "井", "段", "富", "巫", "乌", "焦", "巴", "弓", "牧", "隗", "山", "谷", "车", "侯", "宓", "蓬", "全", "郗", "班", "仰", "秋", "仲", "伊", "宫", "宁", "仇", "栾", "暴", "甘", "钭", "历", "戎", "祖", "武", "符", "刘", "景", "詹", "束", "龙", "叶", "幸", "司", "韶", "郜", "黎", "蓟", "溥", "印", "宿", "白", "怀", "蒲", "邰", "召", "有", "舜", "拉", "丛", "岳", "寸", "贰", "皇", "侨", "彤", "竭", "端", "赫", "实", "甫", "集", "象", "翠", "狂", "辟", "典", "良", "函", "芒", "苦", "其", "京", "中", "夕", "之", "从", "鄂", "索", "咸", "籍", "赖", "卓", "蔺", "屠", "蒙", "池", "乔", "阳", "郁", "胥", "能", "苍", "双", "闻", "莘", "党", "翟", "谭", "贡", "劳", "逄", "姬", "申", "扶", "堵", "冉", "宰", "郦", "雍", "却", "璩", "桑", "桂", "濮", "牛", "寿", "通", "边", "扈", "燕", "冀", "僪", "浦", "尚", "农", "温", "别", "庄", "晏", "柴", "瞿", "阎", "充", "慕", "连", "茹", "习", "宦", "艾", "鱼", "容", "向", "古", "易", "慎", "戈", "廖", "庾", "终", "暨", "居", "衡", "步", "都", "耿", "满", "弘", "匡", "国", "文", "琴", "况", "亢", "缑", "帅", "寇", "广", "禄", "阙", "东", "欧", "殳", "沃", "利", "蔚", "越", "夔", "隆", "师", "巩", "厍", "聂", "晁", "勾", "敖", "融", "冷", "訾", "辛", "阚", "那", "简", "饶", "空", "曾", "毋", "沙", "乜", "养", "鞠", "须", "丰", "巢", "关", "蒯", "相", "查", "后", "荆", "红", "游", "特", "察", "竺", "冠", "宾", "香", "赏", "伯", "佴", "佘", "佟", "爱", "年", "笪", "谯", "哈", "墨", "牟", "商", "海", "归", "钦", "鄢", "汝", "法", "闫", "楚", "晋", "督", "仉", "盖", "逯", "库", "郏", "逢", "阴", "薄", "厉", "稽", "开", "光", "操", "瑞", "眭", "泥", "运", "摩", "伟", "铁", "迮", "果", "权", "逮", "盍", "益", "桓", "公", "万俟", "司马", "上官", "欧阳", "夏侯", "诸葛", "闻人", "东方", "赫连", "皇甫", "尉迟", "公羊", "澹台", "公冶", "宗政", "濮阳", "淳于", "单于", "太叔", "申屠", "公孙", "仲孙", "轩辕", "令狐", "钟离", "宇文", "长孙", "慕容", "司徒", "司空", "章佳", "那拉", "觉罗", "纳喇", "乌雅", "范姜", "碧鲁" };

pub const last_name_pattern = [_]NamePattern{.{ .value = "{{person.last_name}}", .weight = 1 }};

pub const male_first_name = [_][]const u8{ "建华", "建国", "建军", "国强", "国平", "国良", "国栋", "国辉", "志国", "志明", "勇", "军", "伟", "强", "刚", "涛", "斌", "波", "辉", "磊", "超", "鹏", "杰", "浩", "鑫", "帅", "宇", "晨", "诚", "成", "民", "明", "阳", "瑜", "熙成", "熙瑶", "家豪", "家明", "俊杰", "俊熙", "沐宸", "浩宇", "浩然", "浩轩", "浩晨", "沐辰", "茗泽", "奕辰", "奕泽", "宇泽", "宇轩", "宇航", "沐阳", "梓诚", "梓豪", "梓睿", "梓浩", "浩辰", "癸霖", "一全", "三锋", "义轩", "俊凯", "子豪", "振东", "智杰", "哲新", "文昊", "中海", "超栋", "治涛", "治文", "文韬", "敬彪", "敬阳", "政君", "立伟", "呈轩" };

pub const male_prefix = .{};

pub const name = [_]NamePattern{.{ .value = "{{person.lastName}}{{person.firstName}}", .weight = 1 }};

pub const prefix = .{};