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

class MedicationOrder < ApplicationRecord
  belongs_to :frequency, class_name: "OrderFrequency", foreign_key: "order_frequency_id"
  belongs_to :patient

  enum unit: [:mg]
  enum route: [:PO, :IM, :SC]

  validates :name, :dosage, presence: true
end
