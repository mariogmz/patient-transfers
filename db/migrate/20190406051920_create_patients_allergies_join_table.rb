class CreatePatientsAllergiesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :patients, :allergies do |t|
      t.index [:patient_id, :allergy_id]
    end
  end
end
