# frozen_string_literal: true

# == Schema Information
#
# Table name: diagnostic_procedures
#
#  id          :integer          not null, primary key
#  description :text
#  patient_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  moment      :datetime
#

require "test_helper"

class DiagnosticProcedureTest < ActiveSupport::TestCase
  context "associations" do
    should belong_to(:patient)
  end

  context "validations" do
    should validate_presence_of(:description)
    should validate_presence_of(:moment)
  end

  test "#date" do
    subject.moment = DateTime.new(2019, 4, 5)
    assert_equal("April 5, 2019", subject.date)
  end

  test "#time" do
    subject.moment = DateTime.new(2019, 4, 5, 14, 30, 0)
    assert_equal("2:30 pm", subject.time)
  end

  test "#to_s" do
    subject.description = "Tested"
    subject.moment = DateTime.new(2019, 4, 5, 14, 30, 0)
    assert_equal("Tested on April 5, 2019, at 2:30 pm", subject.to_s)
  end
end
