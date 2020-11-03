module ApplicationHelper
  # デバイスのエラーメッセージ出力メソッド
  def devise_error_messages
    return "" if resource.errors.empty?
    html = ""
    # エラーメッセージ用のHTMLを生成
    resource.errors.full_messages.each do |msg|
      html += <<-EOF
        <div class="error_field alert alert-danger" role="alert">
          <p class="error_msg">#{msg}</p>
        </div>
      EOF
    end
    html.html_safe
  end

  # デバイスのエラーメッセージ色分け
  def bootstrap_alert(key)
    case key
    when "alert"
      "warning"
    when "notice"
      "success"
    when "error"
      "danger"
    end
  end

  # ユーザのグループにおける権限を取得
  def user_admin_flg(user, clan)
    flg = Belonging.find_by(user_id: user.id, clan_id: clan.id) if user
    flg.admin_flg if flg
  end

  #gem meta-tag
  def default_meta_tags
    {
      site: 'We Play',
      keyword: 'PS, プレステ, ゲーム仲間, クラン',
      reverse: true,
      separator: '|',
      description: 'プレイステーションのゲーム仲間・コミュニティ探しサービスです。',
      canonical: request.original_url,
      noindex: ! Rails.env.production?,
      icon: [
        { href: image_url('favicon.ico') }
      ],
      og: defalut_og,
      twitter: {
        card: 'summary_large_image',
        site: '@weplay_ps',
      }
    }
  end
  
  private
  
  def defalut_og
    {
      site_name: 'We Play',
        title: 'We Play',
        description: 'プレイステーションのゲーム仲間・コミュニティ探しサービスです。', 
        type: 'website',
        url: request.original_url,
        image: image_url('weplay.png'),
        locale: 'ja_JP',
    }
  end
end
