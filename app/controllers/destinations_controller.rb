class DestinationsController < ApplicationController
  before_action :set_destination, only: [:edit, :show, :update, :destroy]

  # def index
  #   @destinations = Destination.all
  # end

  # def new
  #   @destination = Destination.new
  # end

  # def create
  #   @destination = Destination.create(destination_params(:name, :country))
  #   if @destination.valid?
  #     redirect_to destination_path(@destination)
  #   else
  #     flash[:messages] = @destination.errors.full_messages
  #     render :new
  #   end
  # end

  def show
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  private

  def set_destination
    @destination = Destination.find(params[:id])
  end

  def destination_params(*args)
    params.require(:destination).permit(*args)
  end

end
