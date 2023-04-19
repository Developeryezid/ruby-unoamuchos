class CreateArticulos < ActiveRecord::Migration[6.1]
  def change
    create_table :articulos do |t|
      t.string :nombre
      t.string :cantidad
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
