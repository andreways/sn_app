# == Schema Information
#
# Table name: spot_reviews
#
#  id         :bigint           not null, primary key
#  content    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  spot_id    :bigint           not null
#
# Indexes
#
#  index_spot_reviews_on_spot_id  (spot_id)
#
# Foreign Keys
#
#  fk_rails_...  (spot_id => spots.id)
#
require 'rails_helper'

RSpec.describe SpotReview, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
