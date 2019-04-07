# frozen_string_literal: true
# == Schema Information
#
# Table name: patients
#
#  id          :integer          not null, primary key
#  first_name  :string
#  middle_name :string
#  last_name   :string
#  mr          :string
#  dob         :datetime
#  gender      :integer
#  facility_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require "test_helper"

class PatientTest < ActiveSupport::TestCase
  context "associations" do
    should belong_to(:facility)
    should have_one(:admission)
    should have_and_belong_to_many(:allergies)
    should have_many(:cronic_conditions)
    should have_many(:diagnoses)
    should have_many(:diagnostic_procedures)
    should have_many(:medication_orders)
  end

  context "validations" do
    should validate_presence_of(:first_name)
    should validate_presence_of(:last_name)
    should validate_presence_of(:dob)
  end

  context "attributes" do
    should define_enum_for(:gender)
  end
end
