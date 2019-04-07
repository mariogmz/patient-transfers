# frozen_string_literal: true

# == Schema Information
#
# Table name: admissions
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  patient_id :integer
#  moment     :datetime
#

require "test_helper"

class AdmissionTest < ActiveSupport::TestCase
  context "associations" do
    should belong_to(:patient)
    should have_many(:diagnoses)
    should have_many(:observations)
    should have_many(:symptoms)
  end

  context "validations" do
    should validate_presence_of(:moment)
  end

  test "#date" do
    date = DateTime.new(2019, 4, 1, 14, 30, 0)
    subject.moment = date
    assert_equal("April 1, 2019", subject.date)
  end

  test "#time" do
    date = DateTime.new(2019, 4, 1, 14, 30, 0)
    subject.moment = date
    assert_equal("2:30 pm", subject.time)
  end
end
