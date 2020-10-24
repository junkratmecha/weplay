require 'rails_helper'
describe User do
  context 'registration sucess case' do
    it "can create user" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "can careate user with 8 charakter password" do
      user = build(:user, password: "a1" * 3, password_confirmation: "a1" * 3)
      expect(user).to be_valid
    end
  end

  context 'registration error case by nil' do
    it "failed when name = nil" do
      user = build(:user, name: nil)
      expect(user).not_to be_valid
      expect(user.errors[:name]).to include("を入力してください")
    end

    it "failed when email = nil" do
      user = build(:user, email: nil)
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "failed when password = nil" do
      user = build(:user, password: nil, password_confirmation: nil)
      expect(user).not_to be_valid
      expect(user.errors[:password]).to include("を入力してください")
    end
  end

  context 'registration error case by email_validation_error ' do
    it "failed when email alredy exists" do
      user1 = create(:user)
      user2 = build(:user, email: "test@test.mail")
      expect(user2). not_to be_valid
      expect(user2.errors[:email]).to include("はすでに存在します")
    end

    it "failed when email is ZENKAKU-KANAMOJI" do
      user = build(:user, email: "ああああ@mail.com")
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include("は不正な値です")
    end

    it "failed when email do not include @ " do
      user = build(:user, email: "aaaabbbbemail.com")
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include("は不正な値です")
    end
  end

  context 'registration error case by password_validation_error ' do
    it "failed when password under 6" do
      user = build(:user, password: "aaa11", password_confirmation: "aaa11")
      expect(user).not_to be_valid
    end

    it "failed when password over128" do
      user = build(:user, password: "11" * 100, password_confirmation: "11" * 100)
      expect(user).not_to be_valid
    end

    it "failed when passord and password confirmation are not equal" do
      user = build(:user, password: "aaaa1111", password_confirmation: "bbbb2222")
      expect(user).not_to be_valid
    end
  end
end
