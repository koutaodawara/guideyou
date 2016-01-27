class TagsController < ApplicationController
  def show
    @tags = Guide.tagged_with(Tag.find(params[:id]).name)
  end
end
