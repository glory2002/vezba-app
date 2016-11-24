class EmbroderiesController < ApplicationController
  def index
  end

  def show
    @embroderies = Embrodery.find(params[:id])
  end

  def new
    @embrodery = Embrodery.new
  end

  def create
    @embrodery = Embrodery.new(embrodery_params)

    if @embrodery.save
      redirect_to @embrodery
    else
      render 'new'
    end
  end

  private
  def embrodery_params
    params.require(:embrodery).permit(:name, :image)
  end
end
