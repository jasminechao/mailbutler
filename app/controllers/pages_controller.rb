class PagesController < ApplicationController
  before_action :set_feature, only: [:feature]

  def home
    @feature = Feature.find_by_header("Email Tracking")
  end

  def feature
    @features = Feature.all
    @feature = Feature.find(params[:id])
    @offer = Offer.new
    @offer.feature = @feature
    @testimonials = Testimonial.all
    @faqs = Faq.all
  end

  private

  def set_feature
    @feature = Feature.find(params[:id])
  end

  def feature_params
    params.require(:feature).permit(:header, :subhead, :description, :video_link, :cloundinary_img_url)
  end

end
