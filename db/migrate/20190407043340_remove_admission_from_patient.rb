class RemoveAdmissionFromPatient < ActiveRecord::Migration[5.2]
  def change
    remove_reference :patients, :admission, index: true, foreign_key: true
  end
end
