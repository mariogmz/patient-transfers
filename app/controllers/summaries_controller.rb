# frozen_string_literal: true

class SummariesController < ApplicationController
  before_action :set_patient, only: [:show]
  def show
  end

  private

    def set_patient
      @patient = Patient.find(params[:id])
    end
end
