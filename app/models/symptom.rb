# frozen_string_literal: true

# == Schema Information
#
# Table name: symptoms
#
#  id           :integer          not null, primary key
#  description  :text
#  admission_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#


class Symptom < ApplicationRecord
  belongs_to :admission

  validates :description, presence: true

  def to_s
    description
  end
end
