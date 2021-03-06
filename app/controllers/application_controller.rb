class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  def set_user
    @user = User.find(params[:id])
  end
  
  def set_stove
    @stove = Stove.find(params[:id])
  end
  
  def set_repair
    @repair = Repair.find(params[:id])
  end
  
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "ログインしてください。"
      redirect_to login_url
    end
  end
  
  def correct_user
    redirect_to(root_url) unless current_user?(@user)
  end
end
