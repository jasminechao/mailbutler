class PagesController < ApplicationController
  before_action :set_feature, only: [:feature]

  def home
    @features = Feature.all
    # @features = Feature.all.select(&:is_ready?)
  end

  def feature
    @feature = Feature.find(params[:id])
    @features = Feature.all
  end

  private

  def set_feature
    @feature = Feature.find(params[:id])
  end

  def feature_params
    params.require(:feature).permit(:header, :subhead, :description, :video_link, :cloundinary_img_url)
  end

end
