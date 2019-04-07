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


require "test_helper"

class SymptomTest < ActiveSupport::TestCase
  context "associations" do
    should belong_to(:admission)
  end

  context "validations" do
    should validate_presence_of(:description)
  end
end
