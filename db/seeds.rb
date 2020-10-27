User.create!(name:  "Guest User",
            psid: "guest",
            sex: 0,
            age: 1,
            address: "関東",
            email: "guest@guest.com",
            password: "guestguest",
            password_confirmation: "guestguest")

User.create!(name:  "Example User",
            psid: "example",
            sex: 0,
            age: 1,
            address: "中野区",
            email: "example@example.com",
            password: "foobar",
            password_confirmation: "foobar")

User.create!(name:  "Admin User",
            psid: "admin",
            sex: 0,
            age: 2,
            address: "兵庫県",
            email: "admin@admin.com",
            password: "weplaygo",
            password_confirmation: "weplaygo")

User.create!(name:  "ゲンジ",
            psid: "nanogenji",
            image: File.open('./app/assets/images/team_black1.png'),
            sex: 0,
            age: 1,
            address: "東京都内",
            email: "aaaa@gmail.com",
            password: "aaaaaa",
            password_confirmation: "aaaaaa")

User.create!(name:  "パスファインダー",
            psid: "pathfinder",
            image: File.open('./app/assets/images/top.jpg'),
            sex: 0,
            age: 1,
            address: "難波",
            email: "bbbb@gmail.com",
            password: "bbbbbb",
            password_confirmation: "bbbbbb")

User.create!(name:  "オオカミ",
            psid: "wulf",
            sex: 1,
            age: 2,
            address: "どこか",
            email: "cccc@gmail.com",
            password: "cccccc",
            password_confirmation: "cccccc")

Clan.create!(name: "Watchdogs",
            image: File.open('./app/assets/images/team_blue1.png'),
            level: "マスター目指す",
            status: 0,
            average_age: 2,
            atomosphere: 2)

Clan.create!(name: "キングスキャニオン",
            image: File.open('./app/assets/images/logo_blue_2.png'),
            level: "プラチナ",  
            status: 1,
            average_age: 1,
            atomosphere: 0)

Clan.create!(name: "スライムクライム",
            level: "3rdステージ",  
            status: 0,
            average_age: 3,
            atomosphere: 1)

Belonging.create!(user_id: 4,
            clan_id: 1,  
            admin_flg: 1)

Belonging.create!(user_id: 5,
            clan_id: 2, 
            admin_flg: 1)

Belonging.create!(user_id: 6,
            clan_id: 3, 
            admin_flg: 1)

 