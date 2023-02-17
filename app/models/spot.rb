# == Schema Information
#
# Table name: spots
#
#  id          :bigint           not null, primary key
#  description :text             not null
#  price       :integer          not null
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_spots_on_title  (title) UNIQUE
#
class Spot < ApplicationRecord

  has_many :spot_images, dependent: :destroy
  has_many :spot_reviews, as: :reviews, dependent: :destroy
  
  validates :title, :description, :price, presence: true
  
end
