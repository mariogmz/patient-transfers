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

class CronicCondition < Diagnosis
end
