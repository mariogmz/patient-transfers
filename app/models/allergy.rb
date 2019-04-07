# frozen_string_literal: true

# == Schema Information
#
# Table name: allergies
#
#  id          :integer          not null, primary key
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


class Allergy < ApplicationRecord
  has_and_belongs_to_many :patients
  validates :description, presence: true

  def to_s
    description
  end
end
