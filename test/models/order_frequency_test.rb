# frozen_string_literal: true

# == Schema Information
#
# Table name: order_frequencies
#
#  id         :integer          not null, primary key
#  value      :string
#  unit       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


require "test_helper"

class OrderFrequencyTest < ActiveSupport::TestCase
  context "associations" do
    should have_many(:medication_orders)
  end

  context "validations" do
    should validate_presence_of(:value)
  end

  context "attributes" do
    should define_enum_for(:unit)
  end
end
