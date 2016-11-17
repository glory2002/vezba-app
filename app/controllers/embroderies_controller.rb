class EmbroderiesController < ApplicationController
  def index
  end

  def show
    @embroderies = Embrodery.find(params[:id])
  end
end
