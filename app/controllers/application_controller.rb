class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    @locations = ["Miami", "Sydney", "Brisbane", "Singapore", "Perth", "Auckland", "Melbourne", "Honolulu", "Orlando", "Fort Lauderdale", "Seattle"]
  end

  def edit
    @User = current_user
  end

  def update
    current_user.update(first: params[:first], second: params[:second], third: params[:third], fourth: params[:fourth], fifth: params[:fifth])
    # redirect_to root_path
  end

  def destroy
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :url, :job, :first, :second, :third, :fourth, :fifth])
  end
end
