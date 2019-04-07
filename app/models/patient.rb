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

class Patient < ApplicationRecord
  belongs_to :facility
  has_one :admission
  has_and_belongs_to_many :allergies
  has_many :cronic_conditions, as: :diagnosable
  has_many :diagnoses, as: :diagnosable
  has_many :diagnostic_procedures
  has_many :medications, class_name: "MedicationOrder"
  has_many :treatments

  enum gender: [:male, :female, :other]

  validates :first_name, :last_name, :dob, presence: true

  def age
    DateTime.now.year - dob.year
  end
end
