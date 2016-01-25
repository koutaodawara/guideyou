class GuidesController < ApplicationController
  def index
  end

  def new
    @guides = Guide.new
  end

  def create
   
    Guide.create(guides_params)
    redirect_to '/'
  end

  def show
  end


  def guides_params
    params.require(:guide).permit(:text, :img)
  end
end
