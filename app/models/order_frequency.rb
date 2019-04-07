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
  has_many :medication_orders, foreign_key: "frequency_id"
  enum unit: [:hour]

  validates :value, presence: true
end
