require 'rails_helper'
describe Clan do
  # 名前,ゲームタグがあれば有効な状態であること
  context 'create sucess case' do
    it "can create clan" do
      clan = build(:clan)
      expect(clan).to be_valid
    end
  end
  # 名前,ゲームタグが無ければ無効な状態であること

  context 'create failed by nil colum' do
    it "failed when name = nil" do
      clan = build(:clan, name: nil)
      expect(clan).not_to be_valid
      expect(clan.errors[:name]).to include("を入力してください")
    end

    it "failed when tag_list = nil" do
      clan = build(:clan, tag_list: nil)
      expect(clan).not_to be_valid
      expect(clan.errors[:tag_list]).to include("を入力してください")
    end
  end

  # クラン名の文字数制限

  context 'name length validation' do
    it "sucess when name under 10" do
      clan = build(:clan, name: "テスト帯" )
      expect(clan).to be_valid
    end
    it "failed when name over 10" do
      clan = build(:clan, name: "テスト帯を抜けてテスト帯2へ挑戦中" )
      expect(clan).not_to be_valid
    end
  end

  # レベルの文字数制限

  context 'create with level' do
    it "sucess when level under 10" do
      clan = build(:clan, level: "テスト帯" )
      expect(clan).to be_valid
    end
    it "failed when level over 10" do
      clan = build(:clan, level: "テスト帯を抜けてテスト帯2へ挑戦中" )
      expect(clan).not_to be_valid
    end
  end
  # クラン紹介の文字数制限

  context 'create with clan_introduction' do
    it "sucess when clan_introdiction under 400" do
      clan = build(:clan, clan_introduction: "アイウエオ" * 80)
      expect(clan).to be_valid
    end
    it "failed when clan_introdiction over 400" do
      clan = build(:clan, clan_introduction: " アイウエオ " * 81)
      expect(clan).not_to be_valid
    end
  end
end
