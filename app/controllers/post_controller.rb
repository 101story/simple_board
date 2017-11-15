class PostController < ApplicationController
  
  before_action(:find_post, only: [:show, :modify, :destory])
  
  def index
    @posts = Post.all
    # if session[:user_id]
    #   @session_email = User.find(session[:user_id]).email
    # end
  end

  def new
  end

  def create
    user_id = session[:user_id]
    title = params[:title]
    content = params[:content]
    
    Post.create(
      user_id: user_id,
      title: title,
      content: content
    )
    redirect_to '/post/index'
  end

  def show
    if @post.user_id == 0 || !@post.user_id
      @user_email = "anonymous"
    else
      @user_email = @post.user.email
    end
    @comments = @post.comments 
    
  end
  
  def modify
  end
  
  def update
    title = params[:title]
    content = params[:content]
    
    @post.update(
      title: title,
      content: content
    )
    redirect_to "/post/show/#{id}"
  end
  
  def destory
    @post.destroy
    
    redirect_to '/post/index'
  end
  
  def logout        
    session.clear
    #session.delete(key)
    redirect_to '/user/index'
  end

  def create_comment
    @comment = params[:comment]
    @post_id = params[:post_id]
    Comment.create(
      post_id: @post_id,
      content: @comment
    )
    redirect_to :back
  end

  private
  def find_post 
    @post = Post.find(params[:id])
  end

end
