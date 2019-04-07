# frozen_string_literal: true

# == Schema Information
#
# Table name: facilities
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class Facility < ApplicationRecord
  has_many :patients
  validates :name, presence: true
end
