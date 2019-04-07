# frozen_string_literal: true

# == Schema Information
#
# Table name: treatments
#
#  id          :integer          not null, primary key
#  description :text
#  necessity   :text
#  patient_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


require "test_helper"

class TreatmentTest < ActiveSupport::TestCase
  context "associations" do
    should belong_to(:patient)
  end

  context "validations" do
    should validate_presence_of(:description)
  end
end
