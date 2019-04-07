# frozen_string_literal: true

# == Schema Information
#
# Table name: order_frequencies
#
#  id         :integer          not null, primary key
#  value      :string
#  unit       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class OrderFrequency < ApplicationRecord
  has_many :medication_orders
  enum unit: { hour: "hrs" }

  validates :value, presence: true

  def to_s
    "q#{value}#{self.class.units[unit]}"
  end
end
