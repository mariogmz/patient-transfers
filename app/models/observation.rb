# frozen_string_literal: true

# == Schema Information
#
# Table name: observations
#
#  id           :integer          not null, primary key
#  description  :text
#  admission_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#


class Observation < ApplicationRecord
  belongs_to :admission
end
