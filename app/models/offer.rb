class Offer < ApplicationRecord
  belongs_to :feature
  validates :title, :description, :feature, presence: true
end
