class AddMomentToAdmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :admissions, :moment, :datetime
  end
end
