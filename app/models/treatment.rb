# frozen_string_literal: true

# == Schema Information
#
# Table name: treatments
#
#  id          :integer          not null, primary key
#  description :text
#  necessity   :text
#  patient_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


class Treatment < ApplicationRecord
  belongs_to :patient

  validates :description, presence: true
end
