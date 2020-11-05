require 'rails_helper'

describe UsersController do
  let(:user) { create(:user) }

  describe 'GET #show' do

    before do
      get :show, params: { id: user }
    end

    it "ユーザー詳細ページに遷移すること" do
      expect(response).to render_template :show
    end

    it "HTTPのレスポンスが200であること" do
      expect(response).to have_http_status "200"
    end

    it "適切にインスタンス変数(@user)が取り出されること" do
      expect(assigns(:user)).to eq user
    end
  end

  describe 'GET #edit' do
    context "ユーザーがログインしている場合" do
      before do
        visit '/users/sign_in'
        fill_in 'user[email]', with: user.email
        fill_in 'user[password]', with: user.password
        click_button 'ログイン'
        visit '/users/edit'
      end

      it "プロフィール編集ページに遷移すること" do
        expect(response).to render_template :edit
      end

      it "HTTPのレスポンスが200であること" do
        expect(response).to have_http_status "200"
      end

      it "適切にインスタンス変数(@user)が取り出されること" do
        expect(assigns(:user)).to eq @user
      end
    end
  end
end
