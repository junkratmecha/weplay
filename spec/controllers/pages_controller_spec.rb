require 'rails_helper'

describe PagesController do
  describe 'pages routing can be seen by routing' do
    #トップページが見れる。
    context "home/top page can be access" do
      before do
        get :home
      end
      it "go to top page" do
        expect(response).to render_template :home
      end

      it "have 200 response status" do
        expect(response).to have_http_status "200"
      end
    end
    #howtoが見れる。
    context "howtto pages can be access" do
      before do
        get :howto
      end

      it "go to howto page" do
        expect(response).to render_template :howto
      end

      it "have 200 response status" do
        expect(response).to have_http_status "200"
      end
    end
    #利用規約が見れる。
    context "terms pages can be access" do
      before do
        get :terms
      end

      it "go to terms page" do
        expect(response).to render_template :terms
      end

      it "have 200 response status" do
        expect(response).to have_http_status "200"
      end
    end
    #プライバシーポリシーが見れる。
    context "privacy pages can be access" do
      before do
        get :privacy
      end

      it "go to privacy page" do
        expect(response).to render_template :privacy
      end

      it "have 200 response status" do
        expect(response).to have_http_status "200"
      end
    end
  end
end
