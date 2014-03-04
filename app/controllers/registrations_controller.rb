class RegistrationsController < Devise::RegistrationsController

 protected

  def after_sign_up_path_for(resource)
    UserMailer.welcome(current_user).deliver
    user_path(current_user)
  end

end