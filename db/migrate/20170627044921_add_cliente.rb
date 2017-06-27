class AddCliente < ActiveRecord::Migration[5.1]
  def change
  	add_reference :productos, :cliente, index: true
  	add_foreign_key :productos, :clientes
  end
end
