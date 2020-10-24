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

  # 各グループの所属人数を算出
  def clan_member_calc(clan)
    num = Belonging.where(clan_id: clan.id).count
  end
end
