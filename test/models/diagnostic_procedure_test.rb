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


require "test_helper"

class DiagnosticProcedureTest < ActiveSupport::TestCase
  context "associations" do
    should belong_to(:patient)
  end

  context "attributes" do
    should respond_to?(:moment)
  end
end
