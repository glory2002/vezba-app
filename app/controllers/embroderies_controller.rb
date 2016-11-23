class EmbroderiesController < ApplicationController
  def index
  end

  def show
    @embroderies = Embrodery.find(params[:region_id])
  end

  def new
    @embroderies = Embrodery.new
  end

  def create
    @embroderies = Embrodery.new(params[:embroderies_id])

    if @embroderies.save
      redirect_to 'embroderies/show'
    else
      render 'embroderies/new'
    end
  end
end
