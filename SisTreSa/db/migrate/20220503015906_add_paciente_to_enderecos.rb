class AddPacienteToEnderecos < ActiveRecord::Migration[6.1]
  def change
    add_reference :enderecos, :paciente, null: false, foreign_key: true
  end
end
