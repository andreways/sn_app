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
FactoryBot.define do
  factory :spot do
    title { "MyString" }
    description { "MyText" }
    price { 1 }
  end
end
