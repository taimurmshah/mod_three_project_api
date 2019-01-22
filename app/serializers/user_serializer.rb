class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :language
  has_many :messages
end
