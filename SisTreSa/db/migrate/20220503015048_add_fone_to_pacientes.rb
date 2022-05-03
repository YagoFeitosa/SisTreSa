class AddFoneToPacientes < ActiveRecord::Migration[6.1]
  def change
    add_column :pacientes, :fone, :string
  end
end
