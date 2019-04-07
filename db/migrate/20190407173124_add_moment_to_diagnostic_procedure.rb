class AddMomentToDiagnosticProcedure < ActiveRecord::Migration[5.2]
  def change
    add_column :diagnostic_procedures, :moment, :datetime
  end
end
