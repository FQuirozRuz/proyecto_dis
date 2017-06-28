class CreateProveedors < ActiveRecord::Migration[5.1]
  def change
    create_table :proveedors do |t|
      t.integer :codigo_prov
      t.string :nombre
      t.string :dirección
      t.string :ciudad
      t.integer :fono

      t.timestamps
    end
  end
end
