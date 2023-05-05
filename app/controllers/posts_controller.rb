class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(content: params[:content])
    if post.save
      flash[:notice] = "投稿に成功しました"
      redirect_to("/posts/index")
    end
  end

  def edit
     @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    if @post.update(content: params[:post][:content])
      flash[:notice] = "編集に成功しました"
    end
    redirect_to("/posts/index")
  end

  def delete
    
  end
end
