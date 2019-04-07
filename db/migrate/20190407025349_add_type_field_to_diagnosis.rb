class AddTypeFieldToDiagnosis < ActiveRecord::Migration[5.2]
  def change
    add_column :diagnoses, :type, :string, default: "Diagnosis"
  end
end
