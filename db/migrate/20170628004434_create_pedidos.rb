class CreatePedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos do |t|
      t.integer :num_venta
      t.date :fecha_compra
      t.string :dirección_de_entrega
      t.date :fecha_entrega

      t.timestamps
    end
  end
end
