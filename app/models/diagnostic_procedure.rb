# frozen_string_literal: true

# == Schema Information
#
# Table name: diagnostic_procedures
#
#  id          :integer          not null, primary key
#  description :text
#  patient_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  moment      :datetime
#

class DiagnosticProcedure < ApplicationRecord
  belongs_to :patient

  validates :description, :moment, presence: true
end
