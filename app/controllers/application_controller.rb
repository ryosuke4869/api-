class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    # サインアップ時にusernameも追加で許可
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:user_name])
    #プロフィール編集時にnameと自己紹介、アイコン画像のストロングパラメーターを渡す設定
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name, :introduce, :user_image])
  end
end
