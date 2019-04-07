class AddPatientToAdmission < ActiveRecord::Migration[5.2]
  def change
    add_reference :admissions, :patient, foreign_key: true
  end
end
