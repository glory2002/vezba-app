class EmbroderiesController < ApplicationController
  def index
  
  end

  def show
    @embroderies = Embrodery.find(params[:id])
  end

  def new
    @region = Region.find(params[:region_id])
  end

  def create
    @region = Region.find(params[:region_id])
    @embrodery = @region.embroderies.create(embrodery_params)

    if @embrodery.save
      redirect_to region_embroderies_path(@embrodery)
    else
      render 'new'
    end
  end

  private
  def embrodery_params
    params.require(:embrodery).permit(:name, :image)
  end
end
