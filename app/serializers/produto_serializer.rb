class ProdutoSerializer < ActiveModel::Serializer
  attributes :id, :nome, :val_unitario, :cod_barras
end
