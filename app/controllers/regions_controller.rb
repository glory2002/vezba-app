class RegionsController < ApplicationController
  def index
    @regions = Region.order(name: :asc)
  end

  def show
    @region = Region.find(params[:id])
    @embroderies = @region.embroderies
  end
end
