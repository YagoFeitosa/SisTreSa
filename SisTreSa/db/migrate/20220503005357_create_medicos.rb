class CreateMedicos < ActiveRecord::Migration[6.1]
  def change
    create_table :medicos do |t|
      t.string :nome
      t.string :crm
      t.string :cpf
      t.string :fone

      t.timestamps
    end
  end
end
