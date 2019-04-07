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

class Admission < ApplicationRecord
  belongs_to :patient
  has_many :diagnoses, as: :diagnosable
  has_many :observations
  has_many :symptoms

  validates :moment, presence: true

  def date
    moment.strftime("%B %-d, %Y")
  end

  def time
    moment.strftime("%-I:%M %P")
  end
end
