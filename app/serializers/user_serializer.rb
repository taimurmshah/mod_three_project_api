class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :language

  has_many :messages
  has_many :chat_rooms, through: :messages
end
