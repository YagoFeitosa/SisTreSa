class CreateEnderecos < ActiveRecord::Migration[6.1]
  def change
    create_table :enderecos do |t|
      t.string :numero
      t.string :logradouro
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :pais
      t.string :cep

      t.timestamps
    end
  end
end
