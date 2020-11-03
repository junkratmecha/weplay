#マスターズ 13名
User.create!(name:  "ゲストユーザー",
            psid: "guest",
            sex: 0,
            age: 1,
            address: "関東",
            email: "guest@guest.com",
            self_introduction: 
            "はじめまして、ゲストユーザーとしての履歴は残りませんが、
            サービスを擬似で使うことができます。
            ユーザー登録・ログインも宜しくお願いします。",
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
            self_introduction: 
            "オーバーウォッチ PS4で遊んでます。

            メインはゲンジです！(マーシーは使いたいだけ)
            他は全然使えません(死)
            
            ランクマはゴールド帯の主をしています。
            現在はプラチナですが……。
            
            VC環境は、PS4VC、Skype、discordです。
            
            基本活動時間は平日土日関係なく21時～25時です。
            
            仲良くしてください！
            ",
            password: "aaaaaa",
            password_confirmation: "aaaaaa")

User.create!(name:  "ハンゾー",
            psid: "shimada-bro",
            image: File.open('./app/assets/images/hanzo.jpg'),
            sex: 0,
            age: 4,
            address: "金閣寺",
            email: "bbbb@gmail.com",
            self_introduction: 
            "発売日に買ったのに今更ハマりました｡ﾟ(ﾟ´ω`ﾟ)ﾟ｡
            活動時間は夕方から深夜、あさがたにかか朝方にかけてです╰(*´︶`*)╯
            
            まだ全然上手くないですがエンジョイでも仲良く一緒に遊んでくれるフレンドを募集しています。
            ランクマはまだあまり潜ったことありません！
            
            Skypeやdiscord、ps4本体でも通話できます╰(*´︶`*)╯
            
            ヒーローは時間のいちばん長いハンゾーにしていますがまだ迷走中です！
            
            もし良ければ気軽にフォローしてください｡ﾟ(ﾟ´ω`ﾟ)ﾟ｡
            よろしくお願いします！",
            password: "bbbbbb",
            password_confirmation: "bbbbbb")

User.create!(name:  "パスファインダー",
            psid: "pathfinder",
            image: File.open('./app/assets/images/path.jpg'),
            sex: 0,
            age: 1,
            address: "難波",
            email: "cccc@gmail.com",
            self_introduction: 
            "PS4しか持ってないです
            ライバルシーズン6最大プラチナ
            Twitterとかでも気軽に話しかけてください
            
            よく使うキャラ
            パス/ワトソン",
            password: "cccccc",
            password_confirmation: "cccccc")

User.create!(name:  "ホライズン",
            psid: "ho-holyizon",
            image: File.open('./app/assets/images/horizon.jpg'),
            sex: 1,
            age: 2,
            address: "群馬",
            email: "dddd@gmail.com",
            self_introduction: 
            "初fpsがAPEXです。初心者です。

            とにかくエイムがない！",
            password: "dddddd",
            password_confirmation: "dddddd")

User.create!(name:  "コスおじさん",
            psid: "dokugasuda",
            image: File.open('./app/assets/images/dokuoji.jpg'),
            sex: 0,
            age: 3,
            address: "バンカー",
            email: "eeee@gmail.com",
            self_introduction: 
            "基本ソロの時はランクマにいます。
            フレに誘われたら大体クイックもいきます。",
            password: "eeeeee",
            password_confirmation: "eeeeee")

User.create!(name:  "オオカミ",
            psid: "wulf",
            image: File.open('./app/assets/images/wulf.jpg'),
            sex: 1,
            age: 2,
            address: "どこか",
            email: "ffff@gmail.com",
            self_introduction: 
            "PS4でFall Guysをやっています。ゲームは初めてなので下手くそです。でも好きです。
            Twitchでも配信始めました。
            アカウント登録せずとも見ることはできますので、どうぞいらっしゃいまし。
            活動時間帯：夜(2130～2300ぐらい)",
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
            self_introduction: 
            "のんびりと楽しんでいるエンジョイ勢です！
            フレンド募集してます|дﾟ)
            Skype、Discord、ＶＣ使えます。",
            password: "hhhhhh",
            password_confirmation: "hhhhhh")

User.create!(name:  "Dancequeen",
            psid: "nancynumnum",
            image: File.open('./app/assets/images/dance.jpg'),
            sex: 1,
            age: 1,
            address: "高槻",
            email: "iiii@gmail.com",
            self_introduction: 
            "腕前関係なく楽しくやり、
            チームなんかも組めたら良いなと思っています。
            ボイチャはくだらない雑談を交えつつ飲酒でもしながらワイワイできたらいいです。スカイプもできます。
            興味を持ってくださったら是非ともお気軽にツイッターなどで絡みにきてください！
            たまにYouTubeに動画も上げたりもしてます。一緒にたくさん遊びましょー!",
            password: "iiiiii",
            password_confirmation: "iiiiii")

User.create!(name:  "リヴァイさん",
            psid: "livaiathan",
            image: File.open('./app/assets/images/levai.png'),
            sex: 0,
            age: 0,
            address: "洞窟",
            email: "jjjj@gmail.com",
            self_introduction: 
            "一緒に遊んでくださる人募集中でっす！
            Twitterにて話しかけにお邪魔するのでお気軽にどうぞ！
            お話しながらやるのも大好きなので、お時間合う方いたら、ぜひ一緒に遊んでください！
            よろしくお願いします\( 'ω')/",
            password: "jjjjjj",
            password_confirmation: "jjjjjj")

User.create!(name:  "MELUSI",
            psid: "nijirokuzou",
            image: File.open('./app/assets/images/melushi.jpg'),
            sex: 1,
            age: 2,
            address: "ブラジル",
            email: "kkkk@gmail.com",
            self_introduction: 
            "社会人(主婦)です。ヘタなりにOW楽しんでます:( ;´꒳`;):
            夜21時以降イン率高いです
            お休みの日は日中インしてたりします",
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
            self_introduction: 
            "勝ち負けに固執しない方とボイチャで騒ぎながら遊びたいです。金土はほぼ飲酒。",
            password: "llllll",
            password_confirmation: "llllll")

User.create!(name:  "パフィー",
            psid: "puffy",
            image: File.open('./app/assets/images/puffy.jpg'),
            sex: 0,
            age: 4,
            address: "ハワイ",
            email: "mmmm@gmail.com",
            self_introduction: 
            "はじめまして！
            夜から深夜帯にかけて楽しむ
            エンジョイ勢(下手くそ",
            password: "mmmmmm",
            password_confirmation: "mmmmmm")

User.create!(name:  "jack",
            psid: "jacknife",
            image: File.open('./app/assets/images/jack.png'),
            sex: 0,
            age: 1,
            address: "カルフォルニア",
            email: "nnnn@gmail.com",
            self_introduction: 
            "楽しく一緒にできる人を探してます！
            基本的に仕事終わり〜0時までやっています。
            面白かったらなんでもいいので、
            わいわいやれたらなぁと思ってます。現在2〜3人でランクマッチをしていますが、レートは気にしていません！",
            password: "nnnnnn",
            password_confirmation: "nnnnnn")

User.create!(name:  "秀樹",
            psid: "hidemaru2",
            image: File.open('./app/assets/images/golila.jpg'),
            sex: 0,
            age: 0,
            address: "九州",
            email: "oooo@gmail.com",
            self_introduction: 
            "楽しく一緒にできる人を探してます！
            基本的に仕事終わり〜0時までやっています。
            面白かったらなんでもいいので、
            わいわいやれたらなぁと思ってます。現在2〜3人でランクマッチをしていますが、レートは気にしていません！",
            password: "oooooo",
            password_confirmation: "oooooo")

User.create!(name:  "チーター征伐",
            psid: "silver-sou",
            image: File.open('./app/assets/images/cheat.jpg'),
            sex: 0,
            age: 3,
            address: "名古屋",
            email: "pppp@gmail.com",
            self_introduction: 
            "楽しくワイワイできる人とやりたいです！いいねきたらフォローしにいきます！
            一緒に楽しみましょう！
            イン率高い人大募集！
            最近ゲームやってなくてモチベあげたいんで遊びましょー！",
            password: "pppppp",
            password_confirmation: "pppppp")

User.create!(name:  "漁夫王",
            psid: "kingsteel",
            image: File.open('./app/assets/images/gyofu.png'),
            sex: 0,
            age: 1,
            address: "ネット世界の闇",
            email: "qqqq@gmail.com",
            self_introduction: 
            "遊んでる時間は仕事の都合でバラバラです！
            慣れてくるとテンション高いです。
            ゲームは楽しくやる！がモットーです。",
            password: "qqqqqq",
            password_confirmation: "qqqqqq")

User.create!(name:  "崩れtuber",
            psid: "smilebeez",
            image: File.open('./app/assets/images/top.jpg'),
            sex: 1,
            age: 0,
            address: "北海道",
            email: "rrrr@gmail.com",
            self_introduction: 
            "自己紹介まで見て頂きありがとうございます！
            たとえ、連敗してもイライラしない人が個人的にはありがたいです笑",
            password: "rrrrrr",
            password_confirmation: "rrrrrr")


# タグ付紐付け(%w()の中に記述)
array = %w(Apex オーバーウォッチ FallGuys フォートナイト MHW FF14 R6S CoD バトルフィールド)
array.each{ |tag|
  tag_list = ActsAsTaggableOn::Tag.new
  tag_list.name = tag
  tag_list.save
}
 