# frozen_string_literal: true

# == Schema Information
#
# Table name: allergies
#
#  id          :integer          not null, primary key
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


require "test_helper"

class AllergyTest < ActiveSupport::TestCase
  context "associations" do
    should have_and_belong_to_many(:patients)
  end

  context "validations" do
    should validate_presence_of(:description)
  end

  test "#to_s" do
    subject.description = "description"
    assert_equal("description", subject.to_s)
  end
end
