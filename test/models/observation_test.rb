# frozen_string_literal: true

# == Schema Information
#
# Table name: observations
#
#  id           :integer          not null, primary key
#  description  :text
#  admission_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#


require "test_helper"

class ObservationTest < ActiveSupport::TestCase
  context "asssociations" do
    should belong_to(:admission)
  end

  context "validations" do
    should validate_presence_of(:description)
  end

  test "#to_s" do
    subject.description = "description"
    assert_equal("description", subject.to_s)
  end
end
