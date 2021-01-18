class BloggersController < ApplicationController
  before_action :set_blogger, only: [:edit, :show, :update, :destroy]

  def index
    @bloggers = Blogger.all
  end

  def new
    @blogger = Blogger.new
  end

  def create
    @blogger = Blogger.create(blogger_params(:name, :age, :bio))
    if @blogger.valid?
      redirect_to blogger_path(@blogger)
    else
      flash[:messages] = @blogger.errors.full_messages
      render :new
    end
  end

  def show
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  private

  def set_blogger
    @blogger = Blogger.find(params[:id])
  end

  def blogger_params(*args)
    params.require(:blogger).permit(*args)
  end
end
