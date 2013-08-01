class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def new
    #@post = Post.new(params[:title] , params[:content])
    #@post.save
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

  def create
    Post.create( params[:title] , params[:content] )
  end

  def update
    @post = Post.find( params[:id] )
    if @post.update_attributes(params[:post])
      redirect_to posts_path, :notice => "Has editado tu post con exito"
    else
      render "edit"
    end
  end
end
