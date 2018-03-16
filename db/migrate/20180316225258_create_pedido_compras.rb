class CreatePedidoCompras < ActiveRecord::Migration[5.1]
  def change
    create_table :pedido_compras do |t|
      t.integer :num_pedido
      t.date :data_pedido
      t.integer :fk_cliente

      t.timestamps
    end
  end
end
