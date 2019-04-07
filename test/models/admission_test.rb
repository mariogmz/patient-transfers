# frozen_string_literal: true
# == Schema Information
#
# Table name: admissions
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  patient_id :integer
#

require "test_helper"

class AdmissionTest < ActiveSupport::TestCase
  context "associations" do
    should belong_to(:patient)
    should have_many(:diagnoses)
    should have_many(:observations)
    should have_many(:symptoms)
  end

  context "attributes" do
    should respond_to?(:moment)
  end
end
