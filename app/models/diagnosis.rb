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
#  type             :string
#

class Diagnosis < ApplicationRecord
  belongs_to :diagnosable, polymorphic: true

  validates :code_system,
            :code,
            :description,
            :diagnosable_type,
            :type,
            presence: true
end
