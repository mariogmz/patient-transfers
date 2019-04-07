class CreateDiagnosticProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnostic_procedures do |t|
      t.text :description
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
