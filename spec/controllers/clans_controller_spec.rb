require 'rails_helper'

describe ClansController do
  describe 'GET #index' do
    let(:clan) { create(:clan) }
    let(:user) { create(:user) }

    context "index pages can be seen" do
      before do
        get :index
      end

      it "render index" do
        expect(response).to render_template :index
      end

      it "return HTTP response200" do
        expect(response).to have_http_status "200"
      end
    end
  end

  describe 'GET #new' do
    let(:clan) { create(:clan) }
    let(:user) { create(:user) }

    context "when user login" do
      before do
        visit '/users/sign_in'
        fill_in 'user[email]', with: user.email
        fill_in 'user[password]', with: user.password
        click_button 'ログイン'
        visit '/clans/new'
      end

      it "transferd to clan cleate" do
        expect(response).to render_template :new
      end

      it "return HTTP response200" do
        expect(response).to have_http_status "200"
      end
    end

    context "when not login" do
      before do
        get :new
      end

      it "redirect to login" do
        expect(response).to redirect_to new_user_session_path
      end

      it "return HTTP response 302" do
        expect(response).to have_http_status "302"
      end
    end
  end
end
