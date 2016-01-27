class TopsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.most_used(3)
    # @tops =Guide.tagged_with("グミ")
  end
end
