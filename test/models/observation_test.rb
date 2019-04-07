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
  # test "the truth" do
  #   assert true
  # end
end
