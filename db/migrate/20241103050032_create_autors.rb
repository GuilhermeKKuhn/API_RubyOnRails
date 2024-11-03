class CreateAutors < ActiveRecord::Migration[6.1]
  def change
    create_table :autors do |t|
      t.string :nome
      t.date :nascimento

      t.timestamps
    end
  end
end
