# app/controllers/sessions_controller.rb

class SessionsController < ApplicationController
  include SessionsHelper
  def new
    # ログインフォームを表示するだけなので、何も処理は不要
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user&.authenticate(params[:session][:password])
      log_in user
      redirect_to blogs_path, notice: 'ログインしました。'
    else
      flash.now[:alert] = '入力が正しくありません。'
      render 'new'
    end
  end
  
  

  def destroy
    log_out
    redirect_to root_path, notice: 'ログアウトしました。'
  end
end
