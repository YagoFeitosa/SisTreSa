class CreatePacientes < ActiveRecord::Migration[6.1]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :idade
      t.string :cpf

      t.timestamps
    end
  end
end
