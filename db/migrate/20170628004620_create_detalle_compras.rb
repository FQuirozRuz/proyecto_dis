class CreateDetalleCompras < ActiveRecord::Migration[5.1]
  def change
    create_table :detalle_compras do |t|
      t.integer :codigo_detalle
      t.integer :cantidad
      t.integer :precio

      t.timestamps
    end
  end
end
