class CreateClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.references :pais, null: false, foreign_key: true

      t.timestamps
    end
  end
end
