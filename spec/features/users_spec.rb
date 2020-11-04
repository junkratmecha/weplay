require 'rails_helper'

RSpec.feature 'Users', type: :feature do
  let!(:user) { create(:user) }
  context 'regislation/new' do
    it 'sucess register' do
      visit new_user_registration_path
      # fill_in で登録情報をテキストボックスへ入力
      fill_in 'user[name]', with: "テスト"
      fill_in 'user[email]', with: "abcd@gmail.com"
      fill_in 'user[password]', with: "testtest"
      fill_in 'user[password_confirmation]', with: "testtest"
      click_button 'ユーザー登録' # ボタンをクリック
      expect(page).to have_content 'アカウント登録が完了しました。'
    end
    
    it 'failed register' do
      visit new_user_registration_path
      # fill_in で登録情報をテキストボックスへ入力
      fill_in 'user[name]', with: ""
      fill_in 'user[email]', with: ""
      fill_in 'user[password]', with: ""
      fill_in 'user[password_confirmation]', with: ""
      click_button 'ユーザー登録' # ボタンをクリック
      expect(page).to have_content '入力してください'
    end
  end

  context 'login/logout' do
    # viewからログイン・ログアウトを操作

    it 'sucess login and logout by view' do
      visit '/users/sign_in'
      fill_in 'user[email]', with: user.email
      fill_in 'user[password]', with: user.password
      click_button 'ログイン'
      expect(page).to have_content 'ログインしました。'
      expect(page).to have_content 'ログアウト'
      click_link 'ログアウト'
      expect(page).to have_content 'ログアウトしました。'
    end
    # viewからログインで誤ったパスワード

    it 'login failed with wrong password' do
      visit '/users/sign_in'
      fill_in 'user[email]', with: user.email
      fill_in 'user[password]', with: 'hogehogehoge'
      click_button 'ログイン'
      expect(page).to have_content 'Eメールまたはパスワードが違います。'
    end
  end
end
