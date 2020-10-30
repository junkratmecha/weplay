#マスターズ 13名
User.create!(name:  "ゲストユーザー",
            psid: "guest",
            sex: 0,
            age: 1,
            address: "関東",
            email: "guest@guest.com",
            password: "guestguest",
            password_confirmation: "guestguest")

User.create!(name:  "管理人",
            psid: "admin",
            sex: 0,
            age: 2,
            address: "兵庫県",
            email: "admin@admin.com",
            password: "weplaygo",
            password_confirmation: "weplaygo")

User.create!(name:  "ゲンジ",
            psid: "nanogenji",
            image: File.open('./app/assets/images/genji.jpg'),
            sex: 0,
            age: 1,
            address: "東京都内",
            email: "aaaa@gmail.com",
            password: "aaaaaa",
            password_confirmation: "aaaaaa")

User.create!(name:  "ハンゾー",
            psid: "shimada-bro",
            image: File.open('./app/assets/images/hanzo.jpg'),
            sex: 0,
            age: 4,
            address: "金閣寺",
            email: "bbbb@gmail.com",
            password: "bbbbbb",
            password_confirmation: "bbbbbb")

User.create!(name:  "パスファインダー",
            psid: "pathfinder",
            image: File.open('./app/assets/images/path.jpg'),
            sex: 0,
            age: 1,
            address: "難波",
            email: "cccc@gmail.com",
            password: "cccccc",
            password_confirmation: "cccccc")

User.create!(name:  "ホライズン",
            psid: "ho-holyizon",
            image: File.open('./app/assets/images/horizon.jpg'),
            sex: 1,
            age: 2,
            address: "群馬",
            email: "dddd@gmail.com",
            password: "dddddd",
            password_confirmation: "dddddd")

User.create!(name:  "コスおじさん",
            psid: "dokugasuda",
            image: File.open('./app/assets/images/dokuoji.jpg'),
            sex: 0,
            age: 3,
            address: "バンカー",
            email: "eeee@gmail.com",
            password: "eeeeee",
            password_confirmation: "eeeeee")

User.create!(name:  "オオカミ",
            psid: "wulf",
            image: File.open('./app/assets/images/wulf.jpg'),
            sex: 1,
            age: 2,
            address: "どこか",
            email: "ffff@gmail.com",
            password: "ffffff",
            password_confirmation: "ffffff")

User.create!(name:  "パインちゃん",
            psid: "pinechan",
            image: File.open('./app/assets/images/pine.jpg'),
            sex: 1,
            age: 0,
            address: "釧路",
            email: "gggg@gmail.com",
            password: "gggggg",
            password_confirmation: "gggggg")

User.create!(name:  "総司令",
            psid: "general555",
            image: File.open('./app/assets/images/general.jpg'),
            sex: 0  ,
            age: 2,
            address: "東久留米",
            email: "hhhh@gmail.com",
            password: "hhhhhh",
            password_confirmation: "hhhhhh")

User.create!(name:  "Dancequeen",
            psid: "nancynumnum",
            image: File.open('./app/assets/images/dance.jpg'),
            sex: 1,
            age: 1,
            address: "高槻",
            email: "iiii@gmail.com",
            password: "iiiiii",
            password_confirmation: "iiiiii")

User.create!(name:  "リヴァイさん",
            psid: "livaiathan",
            image: File.open('./app/assets/images/levai.png'),
            sex: 0,
            age: 0,
            address: "洞窟",
            email: "jjjj@gmail.com",
            password: "jjjjjj",
            password_confirmation: "jjjjjj")

User.create!(name:  "MELUSI",
            psid: "nijirokuzou",
            image: File.open('./app/assets/images/melushi.jpg'),
            sex: 1,
            age: 2,
            address: "ブラジル",
            email: "kkkk@gmail.com",
            password: "kkkkkk",
            password_confirmation: "kkkkkk")

# その他ユーザーズ 7名

User.create!(name:  "ミーファ",
            psid: "mifa",
            image: File.open('./app/assets/images/mifa.jpg'),
            sex: 1,
            age: 3,
            address: "浅草",
            email: "llll@gmail.com",
            password: "llllll",
            password_confirmation: "llllll")

User.create!(name:  "パフィー",
            psid: "puffy",
            image: File.open('./app/assets/images/puffy.jpg'),
            sex: 0,
            age: 4,
            address: "ハワイ",
            email: "mmmm@gmail.com",
            password: "mmmmmm",
            password_confirmation: "mmmmmm")

User.create!(name:  "jack",
            psid: "jacknife",
            image: File.open('./app/assets/images/jack.png'),
            sex: 0,
            age: 1,
            address: "カルフォルニア",
            email: "nnnn@gmail.com",
            password: "nnnnnn",
            password_confirmation: "nnnnnn")

User.create!(name:  "秀樹",
            psid: "hidemaru2",
            image: File.open('./app/assets/images/golila.jpg'),
            sex: 0,
            age: 0,
            address: "九州",
            email: "oooo@gmail.com",
            password: "oooooo",
            password_confirmation: "oooooo")

User.create!(name:  "チーター征伐",
            psid: "silver-sou",
            image: File.open('./app/assets/images/cheat.jpg'),
            sex: 0,
            age: 3,
            address: "名古屋",
            email: "pppp@gmail.com",
            password: "pppppp",
            password_confirmation: "pppppp")

User.create!(name:  "漁夫王",
            psid: "kingsteel",
            image: File.open('./app/assets/images/gyofu.png'),
            sex: 0,
            age: 1,
            address: "ネット世界の闇",
            email: "qqqq@gmail.com",
            password: "qqqqqq",
            password_confirmation: "qqqqqq")

User.create!(name:  "崩れtuber",
            psid: "smilebeez",
            image: File.open('./app/assets/images/top.jpg'),
            sex: 1,
            age: 0,
            address: "北海道",
            email: "rrrr@gmail.com",
            password: "rrrrrr",
            password_confirmation: "rrrrrr")

# クランシード11個

Clan.create!(name: "Watchpoint",
            image: File.open('./app/assets/images/watchpoint.jpg'),
            tag_list: "オーバーウォッチ",
            level: "マスター目指す",
            status: 0,
            average_age: 2,
            atomosphere: 2)

Clan.create!(name: "ハナムラ",
            image: File.open('./app/assets/images/hanamura.jpg'),
            tag_list: "オーバーウォッチ",
            level: "ダイヤ帯",
            status: 1,
            average_age: 0,
            atomosphere: 1)

Clan.create!(name: "キングスキャニオン",
            image: File.open('./app/assets/images/kings.jpg'),
            tag_list: "Apex",
            level: "プラチナ",  
            status: 1,
            average_age: 1,
            atomosphere: 1)

Clan.create!(name: "Olympus",
            image: File.open('./app/assets/images/olympus.jpg'),
            tag_list: "Apex",
            level: "シルバー",  
            status: 0,
            average_age: 0,
            atomosphere: 0)

Clan.create!(name: "ワールズエッジ",
            image: File.open('./app/assets/images/edge.jpg'),
            tag_list: "Apex",
            level: "ゴールド",  
            status: 0,
            average_age: 2,
            atomosphere: 2)

Clan.create!(name: "スライムクライム",
            image: File.open('./app/assets/images/slime.jpg'),
            tag_list: "FallGuys",
            level: "3rdステージ",  
            status: 0,
            average_age: 3,
            atomosphere: 1)

Clan.create!(name: "バッドラック",
            image: File.open('./app/assets/images/badluck.png'),
            tag_list: "FallGuys",
            level: "王冠取りまくろうぜ",  
            status: 0,
            average_age: 3,
            atomosphere: 1)
  
Clan.create!(name: "集会所",
            image: File.open('./app/assets/images/syukai.jpg'),
            tag_list: "MHW",
            level: "クリアはした",  
            status: 2,
            average_age: 0,
            atomosphere: 0)

Clan.create!(name: "ビクロイ",
            image: File.open('./app/assets/images/vicroy.jpg'),
            tag_list: "フォートナイト",
            level: "まあまあ",  
            status: 0,
            average_age: 2,
            atomosphere: 0)

Clan.create!(name: "ザナルカンド",
            image: File.open('./app/assets/images/zanaru.jpg'),
            tag_list: "FF14",
            level: "バハムート",  
            status: 2,
            average_age: 1,
            atomosphere: 1)

Clan.create!(name: "ファベーラ",
            image: File.open('./app/assets/images/favela.jpg'),
            tag_list: "R6S",
            level: "プラチナ",  
            status: 0,
            average_age: 2,
            atomosphere: 0)
#クランマスター
Belonging.create!(clan_id: 1,
            user_id: 3,
            admin_flg: 1)
Belonging.create!(clan_id: 2,
            user_id: 4,
            admin_flg: 1)
Belonging.create!(clan_id: 3,
            user_id: 5,
            admin_flg: 1)
Belonging.create!(clan_id: 4,
            user_id: 6,
            admin_flg: 1)
Belonging.create!(clan_id: 5,
            user_id: 7,
            admin_flg: 1)
Belonging.create!(clan_id: 6,
            user_id: 8,
            admin_flg: 1)
Belonging.create!(clan_id: 7,
            user_id: 9,
            admin_flg: 1)
Belonging.create!(clan_id: 8,
            user_id: 10,
            admin_flg: 1)
Belonging.create!(clan_id: 9,
            user_id: 11,
            admin_flg: 1)
Belonging.create!(clan_id: 10,
            user_id: 12,
            admin_flg: 1)
Belonging.create!(clan_id: 11,
            user_id: 13,
            admin_flg: 1)


#クランマスター相互join
Belonging.create!(clan_id: 1,
            user_id: 4,
            admin_flg: 0)
Belonging.create!(clan_id: 2,
            user_id: 5,
            admin_flg: 0)
Belonging.create!(clan_id: 3,
            user_id: 6,
            admin_flg: 0)
Belonging.create!(clan_id: 4,
            user_id: 7,
            admin_flg: 0)
Belonging.create!(clan_id: 5,
            user_id: 8,
            admin_flg: 0)
Belonging.create!(clan_id: 6,
            user_id: 9,
            admin_flg: 0)
Belonging.create!(clan_id: 7,
            user_id: 10,
            admin_flg: 0)
Belonging.create!(clan_id: 8,
            user_id: 11,
            admin_flg: 0)
Belonging.create!(clan_id: 9,
            user_id: 12,
            admin_flg: 0)
Belonging.create!(clan_id: 10,
            user_id: 13,
            admin_flg: 0)
Belonging.create!(clan_id: 11,
            user_id: 3,
            admin_flg: 0)

#その他所属v1
Belonging.create!(clan_id: 1,
            user_id: 14,
            admin_flg: 0)
Belonging.create!(clan_id: 2,
            user_id: 15,
            admin_flg: 0)
Belonging.create!(clan_id: 3,
            user_id: 16,
            admin_flg: 0)
Belonging.create!(clan_id: 4,
            user_id: 17,
            admin_flg: 0)
Belonging.create!(clan_id: 5,
            user_id: 18,
            admin_flg: 0)
Belonging.create!(clan_id: 6,
            user_id: 19,
            admin_flg: 0)
Belonging.create!(clan_id: 7,
            user_id: 20,
            admin_flg: 0)

#その他所属v2
Belonging.create!(clan_id: 1,
            user_id: 15,
            admin_flg: 0)
Belonging.create!(clan_id: 2,
            user_id: 16,
            admin_flg: 0)
Belonging.create!(clan_id: 3,
            user_id: 17,
            admin_flg: 0)
Belonging.create!(clan_id: 4,
            user_id: 18,
            admin_flg: 0)
Belonging.create!(clan_id: 5,
            user_id: 19,
            admin_flg: 0)
Belonging.create!(clan_id: 6,
            user_id: 20,
            admin_flg: 0)
Belonging.create!(clan_id: 7,
            user_id: 14,
            admin_flg: 0)

#その他所属v3
Belonging.create!(clan_id: 1,
            user_id: 16,
            admin_flg: 0)
Belonging.create!(clan_id: 2,
            user_id: 17,
            admin_flg: 0)
Belonging.create!(clan_id: 3,
            user_id: 18,
            admin_flg: 0)
Belonging.create!(clan_id: 4,
            user_id: 19,
            admin_flg: 0)
Belonging.create!(clan_id: 5,
            user_id: 20,
            admin_flg: 0)
Belonging.create!(clan_id: 6,
            user_id: 14,
            admin_flg: 0)
Belonging.create!(clan_id: 7,
            user_id: 15,
            admin_flg: 0)

# リクエストサンプル
Request.create!(clan_id: 1,
            user_id: 11)
Request.create!(clan_id: 1,
            user_id: 10)
Request.create!(clan_id: 2,
            user_id: 9)
Request.create!(clan_id: 3,
            user_id: 8)

# タグ付紐付け(%w()の中に記述)
array = %w(Apex オーバーウォッチ FallGuys フォートナイト MHW FF14 R6S CoD バトルフィールド)
array.each{ |tag|
  tag_list = ActsAsTaggableOn::Tag.new
  tag_list.name = tag
  tag_list.save
}
 