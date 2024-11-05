class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :nome
      t.string :cpf
      t.string :telefone
      t.string :cidade
      t.string :cep

      t.timestamps
    end
  end
end
