class GuidesController < ApplicationController
  def index
    @guides = Guide.all.order("created_at DESC")
  end

  def new
    @guides = Guide.new
  end

  def create
    current_user.guides.create(guides_params)
    redirect_to '/'
  end

  def show
  end

  def search
  end

  def tag_cloud
    @tags = Guide.tag_list
  end



  def guides_params
    params.require(:guide).permit(:text, :image)
  end
end
