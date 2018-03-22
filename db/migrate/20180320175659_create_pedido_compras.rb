class CreatePedidoCompras < ActiveRecord::Migration[5.1]
  def change
    create_table :pedido_compras do |t|
      t.integer :num_pedido
      t.date :data_pedido
      t.string :status
      t.references :item_pedido, foreign_key: true

      t.timestamps
    end
  end
end
