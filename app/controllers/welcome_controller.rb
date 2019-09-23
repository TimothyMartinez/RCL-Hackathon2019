class WelcomeController < ApplicationController
  before_action :set_user, only: [:show, :update, :edit]

  def show
  end

  def update
    
  end

  def edit
    @users = current_user
    @user = User.first.update(params[:id])
    if @person.save
      # success
    else
      # error handling
    end
  end

  private 
  
  def set_user
    @users = current_user
  end 
  
  # def user_params 
  #   params.require(:user).permit(:first, :second, :third, :fourth, :fifth)
  # end 
  
end
