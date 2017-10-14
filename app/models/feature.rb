class Feature < ApplicationRecord

  has_many :offers, dependent: :destroy

  validates :header, presence: true

  # def is_ready?
  #   ready = [:header, :subhead, :description, :video_link, :cloundinary_img_url].all? do |attribute|
  #     send(attribute).present?
  #   end
  #   return ready
  # end
  #what checking offers?
end
