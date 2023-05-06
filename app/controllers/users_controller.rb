class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
    
  end

  def create
    user = User.new(name: params[:name], email: params[:email], password: params[:password])
    if  user.save
      flash[:notice] = "ユーザ登録に成功しました"
      redirect_to("/users/index")
    end
  end

  def login_form
    
  end

  def login
    user = User.find_by(email: params[:email])
    if user.password == params[:password]
      session[:user_id] = user.id
      flash[:notice] = "ログインに成功しました"
      redirect_to("/users/index")
    else
      flash[:notice] = "ログインに失敗しました"
      redirect_to("/login")
    end
  end
end
