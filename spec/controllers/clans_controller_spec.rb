require 'rails_helper'

describe ClansController do
  describe 'GET #index' do
    let(:clan) { create(:clan) }

    context "ユーザーがログインしている場合" do
      before do
        get :index
      end

      it "トークルームのトップページに遷移すること" do
        expect(response).to render_template :index
      end

      it "HTTPのレスポンスが200であること" do
        expect(response).to have_http_status "200"
      end
    end
  end
end
