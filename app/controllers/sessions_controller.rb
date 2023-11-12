# app/controllers/sessions_controller.rb

class SessionsController < ApplicationController
  include SessionsHelper
  def new
    # ログインフォームを表示するだけなので、何も処理は不要
  end
  def home
    
  end
  
  def new_signup
    @user = User.new
  end

  
  def signup
    # @user = User.new(user_params)
    @user = User.new
    

    respond_to do |format|
      if @user.save
        format.html { redirect_to calendars_path, notice: "Singup Success." }
      else
        format.html { render :signup, status: :unprocessable_entity }
      end
    end
  end
    

  def create
    user = User.find_by(name: params[:session][:name])
    if user&.authenticate(params[:session][:password])
      log_in user
      redirect_to calendars_path, notice: 'ログインしました。'
    else
      flash.now[:alert] = '入力が正しくありません。'
      render :new
    end
  end
  
  

  def destroy
    log_out
    redirect_to root_path, notice: 'ログアウトしました。'
  end
  
  private
  def user_params
      params.require(:user).permit(:name, :password)
  end
end