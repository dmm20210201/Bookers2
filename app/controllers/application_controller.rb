class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
    if @user.sign_up
      redirect_to user_path(@user.id), notice: "Welcome! You have signed up successfully."
    else
     @user = User.all
     render :index
    end
  end
end
