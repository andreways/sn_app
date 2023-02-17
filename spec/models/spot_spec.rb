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
require 'rails_helper'

RSpec.describe Spot, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
