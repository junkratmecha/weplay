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
end
