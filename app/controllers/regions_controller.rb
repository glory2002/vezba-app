class RegionsController < ApplicationController
  def index
    @regions = Region.order(name: :asc)
  end

  def show
    @region = Region.find(params[:id])
    @embroderies = @region.embroderies.page(params[:page]).per(6)
  end
end
