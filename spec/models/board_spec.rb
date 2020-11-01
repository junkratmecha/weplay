require 'rails_helper'
describe Board do
  # contentがあれば有効な状態であること
  context 'create sucess case' do
    it "can create board" do
      user = build(:user)
      clan = build(:clan)
      board = build(:board, user: user, clan: clan)
      expect(board).to be_valid
    end
  end
  # contentが無ければ無効な状態であること
  context 'create failed by nil colum' do
    it "failed when content = nil" do
      user = build(:user)
      clan = build(:clan)
      board = build(:board, content: nil, user: user, clan: clan)
      expect(board).not_to be_valid
      expect(board.errors[:content]).to include("を入力してください")
    end
  end
  # contentの文字数制限
  context 'content character validation' do
    it "sucess when content under 140" do
      user = build(:user)
      clan = build(:clan)
      board = build(:board, content: "アイウエオ" *28, user: user, clan: clan)
      expect(clan).to be_valid
    end
    it "failed when content over 140" do
      user = build(:user)
      clan = build(:clan)
      board = build(:board, content: "アイウエオ" *29, user: user, clan: clan)
      expect(clan).to be_valid
    end
  end
end