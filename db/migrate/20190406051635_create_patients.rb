class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :mr
      t.datetime :dob
      t.integer :gender
      t.references :facility, foreign_key: true
      t.references :admission, foreign_key: true

      t.timestamps
    end
  end
end
