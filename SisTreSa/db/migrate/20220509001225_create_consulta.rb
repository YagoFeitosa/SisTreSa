class CreateConsulta < ActiveRecord::Migration[6.1]
  def change
    
    create_table :consulta do |t|
      t.belongs_to :paciente
      t.belongs_to :medico
      t.datetime :dataConsulta
      t.timestamps
    end
  end
end
