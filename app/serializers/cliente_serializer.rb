class ClienteSerializer < ActiveModel::Serializer
  attributes :id, :nome, :cpf, :email
end
