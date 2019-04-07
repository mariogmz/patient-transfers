class CreateDiagnoses < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnoses do |t|
      t.string :code_system
      t.string :code
      t.text :description
      t.references :diagnosable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
