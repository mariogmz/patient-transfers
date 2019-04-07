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
#


class DiagnosticProcedure < ApplicationRecord
  belongs_to :patient
  alias_attribute :moment, :created_at
end
