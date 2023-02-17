# == Schema Information
#
# Table name: spot_images
#
#  id         :bigint           not null, primary key
#  main       :boolean          default(TRUE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  spot_id    :bigint           not null
#
# Indexes
#
#  index_spot_images_on_spot_id  (spot_id)
#
# Foreign Keys
#
#  fk_rails_...  (spot_id => spots.id)
#
class SpotImage < ApplicationRecord
  has_one_attached :file

  validates :file, presence: true
end
