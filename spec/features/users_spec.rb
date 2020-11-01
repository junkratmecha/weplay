require 'rails_helper'

RSpec.feature 'Users', type: :feature do
  let!(:user) { create(:user) }
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