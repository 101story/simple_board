class UserController < ApplicationController
  def index
    @users = User.all
    # if session[:user_id]
    #   @session_email = User.find(session[:user_id]).email
    # end
  end

  def new
  end

  def create
    email = params[:email]
    password = params[:password]
    
    User.create(
      email: email,
      password: password
    )
    redirect_to '/user/index'
  end

  def show
    id = params[:id]
    @user = User.find(id)
  end
  
  def login
  end
  
  def login_process
    email = params[:email]
    password = params[:password]
    
    if User.exists?(email: email) 
        user = User.find_by(email: email)
        if user.password == password
            session[:user_id] = user.id
            flash[:notice] = "로그인이 되었습니다."
            
            redirect_to '/post/index'
        else
            flash[:alert] = "비밀번호를 확인해 주세요."
            redirect_to '/user/login' 
        end
    else
      flash[:alert] = "아이디가 없습니다."
      redirect_to '/user/login'  
    end 
    
  end
  
  def logout        
    session.clear
    #session.delete(key)
    flash[:notice] = "로그아웃 되었습니다."
    redirect_to '/post/index'
  end

  def note
  end
end
