class CreateLivros < ActiveRecord::Migration[6.1]
  def change
    create_table :livros do |t|
      t.string :titulo
      t.string :descricao

      t.timestamps
    end
  end
end
