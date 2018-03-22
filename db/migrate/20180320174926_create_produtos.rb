class CreateProdutos < ActiveRecord::Migration[5.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.decimal :valor_unitario
      t.string :cod_barras

      t.timestamps
    end
  end
end
