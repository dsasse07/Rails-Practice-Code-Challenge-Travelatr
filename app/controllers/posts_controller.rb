class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show, :update, :destroy, :like, :love]

  # def index
  #   @posts = post.all
  # end

  def new
    @post = Post.new
  end

  def create

    @post = Post.create(post_params(:title, :content, :blogger_id, :destination_id))
    if @post.valid?
      redirect_to post_path(@post)
    else
      flash[:messages] = @post.errors
      # byebug
      render :new
    end
  end

  def show
  end

  def like
    new_likes = @post.likes + 1
    @post.update(likes: new_likes)
    redirect_to post_path(@post)
  end

  def love
    new_likes = @post.likes + 1000
    @post.update(likes: new_likes)
    redirect_to post_path(@post)
  end

  def edit
  end

  def update

    @post.update(post_params(:title, :content, :blogger_id, :destination_id))
    if @post.valid?
      redirect_to post_path(@post)
    else
      flash[:messages] = @post.errors.full_messages
      render :edit
    end
  end

  # def destroy
  # end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params(*args)
    params.require(:post).permit(*args)
  end
end
