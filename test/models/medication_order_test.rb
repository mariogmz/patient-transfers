# frozen_string_literal: true

# == Schema Information
#
# Table name: medication_orders
#
#  id                 :integer          not null, primary key
#  name               :string
#  unit               :integer
#  dosage             :decimal(, )
#  route              :integer
#  necessity          :text
#  order_frequency_id :integer
#  patient_id         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require "test_helper"

class MedicationOrderTest < ActiveSupport::TestCase
  subject { medication_orders(:naproxen) }
  context "associations" do
    should belong_to(:frequency)
    should belong_to(:patient)
  end

  context "validations" do
    should validate_presence_of(:name)
    should validate_presence_of(:dosage)
  end

  context "attributes" do
    should define_enum_for(:unit)
    should define_enum_for(:route)
  end

  test "#to_s" do
    expected = "Naproxen 500mg PO q6hr to relieve swelling"
    assert_equal(expected, subject.to_s)
  end
end
