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

class Admission < ApplicationRecord
  belongs_to :patient
  has_many :diagnoses, as: :diagnosable
  has_many :observations
  has_many :symptoms

  alias_attribute :moment, :updated_at
end
