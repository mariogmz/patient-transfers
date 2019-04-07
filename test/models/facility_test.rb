# frozen_string_literal: true

# == Schema Information
#
# Table name: facilities
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


require "test_helper"

class FacilityTest < ActiveSupport::TestCase
  context "associations" do
    should have_many(:patients)
  end

  context "validates" do
    should validate_presence_of(:name)
  end
end
