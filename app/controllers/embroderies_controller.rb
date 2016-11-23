class EmbroderiesController < ApplicationController
  def index
  end

  def show
    @embroderies = Embrodery.find(params[:id])
  end

  def new
    @embroderies = Embrodery.new
  end

  def create
    @embroderies = Embrodery.new(params[:embroderies])

    if @embroderies.save
      redirect_to 'embroderies/show'
    else
      render 'embroderies/new'
    end
  end
end
