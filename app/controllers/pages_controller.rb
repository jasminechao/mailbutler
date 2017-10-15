class PagesController < ApplicationController
  before_action :set_feature, only: [:feature]

  def home
    @features = Feature.all
    # @features = Feature.all.select(&:is_ready?)
  end

  def feature
    @features = Feature.all
    @feature = Feature.find(params[:id])
    @offer = Offer.new
    @offer.feature = @feature
    @testimonials = Testimonial.all
  end

  private


  def set_feature
    @feature = Feature.find(params[:id])
    # current_feature = @feature
  end

  def feature_params
    params.require(:feature).permit(:header, :subhead, :description, :video_link, :cloundinary_img_url)
  end

  # def offer_params
  #   params.require(:offer).permit(:title, :description)
  # end

end
