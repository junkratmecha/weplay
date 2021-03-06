class Users::SessionsController < Devise::SessionsController
  def new_guest
    user = User.find(1)
    user.update(email: 'guest@example.com', name: 'ゲストユーザー') do |update_user|
      update_user.password = SecureRandom.urlsafe_base64
    end
    sign_in user
    redirect_to user_path(1)
  end

  def after_sign_in_path_for(resource)
    user_path(resource)
  end
end
