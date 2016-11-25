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

  def destroy
     @region = Region.find(params[:region_id])
     @embrodery = @region.embroderies.find(params[:id])
     @embrodery.destroy
     redirect_to region_path(@region)
  end

  private
  def embrodery_params
    params.require(:embrodery).permit(:name, :image)
  end
end
