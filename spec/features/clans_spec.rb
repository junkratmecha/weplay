require 'rails_helper'

RSpec.feature 'Clans', type: :feature do
  let (:clan) { create(:clan) }
  let (:user) { create(:user) }

  feature 'clan newbefore login' do
    it 'cannot create user' do
      visit '/clans/new'
      expect(page).to have_content 'アカウント登録もしくはログインしてください。'
    end
  end

  feature 'clan controll after login' do
    before do
      visit '/users/sign_in'
      fill_in 'user[email]', with: user.email
      fill_in 'user[password]', with: user.password
      click_button 'ログイン'
      expect(page).to have_content 'ログインしました。'
    end

    it  'failed create clan without game-tag' do 
      visit '/clans/new'
      fill_in 'clan[name]', with: 'テストクラン'
      click_on 'クラン作成'
      expect(page).to have_content 'ゲームを入力してください'
    end
  end
end