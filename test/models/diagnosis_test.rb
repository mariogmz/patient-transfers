# frozen_string_literal: true

# == Schema Information
#
# Table name: diagnoses
#
#  id               :integer          not null, primary key
#  code_system      :string
#  code             :string
#  description      :text
#  diagnosable_type :string
#  diagnosable_id   :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  type             :string           default("Diagnosis")
#

require "test_helper"

class DiagnosisTest < ActiveSupport::TestCase
  context "associations" do
    should belong_to(:diagnosable)
  end

  context "validations" do
    should validate_presence_of(:code_system)
    should validate_presence_of(:description)
    should validate_presence_of(:diagnosable_type)
    should validate_presence_of(:type)
  end

  test "#described_code" do
    subject.code_system = "S82"
    subject.code = "101"
    assert_equal("(S82.101)", subject.described_code)
  end
end
