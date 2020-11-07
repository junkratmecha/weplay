require 'rails_helper'

describe UsersController do
  let(:user) { create(:user) }

  describe 'GET #show' do

    before do
      get :show, params: { id: user }
    end

    it "can show user-my-page" do
      expect(response).to render_template :show
    end

    it "HTTP response return 200" do
      expect(response).to have_http_status "200"
    end
  end

  describe 'GET #edit' do
    context "user login case" do
      before do
        visit '/users/sign_in'
        fill_in 'user[email]', with: user.email
        fill_in 'user[password]', with: user.password
        click_button 'ログイン'
        visit '/users/edit'
      end

      it "can edit user-profile" do
        expect(response).to render_template :edit
      end

      it "HTTP response return 200" do
        expect(response).to have_http_status "200"
      end

      it "@user assigned correctly" do
        expect(assigns(:user)).to eq @user
      end
    end

    context "user not login case" do
      before do
        visit '/users/edit'
      end

      it "nil be assigned" do
        expect(assigns(:user)).to eq nil
      end
    end
  end
end
