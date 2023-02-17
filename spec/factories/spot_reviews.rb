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
FactoryBot.define do
  factory :spot_review do
    content { "MyText" }
    spot { nil }
  end
end
