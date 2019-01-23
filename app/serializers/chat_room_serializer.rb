class ChatRoomSerializer < ActiveModel::Serializer
  attributes :id, :subject, :users

  has_many :messages
  has_many :users, through: :messages
end
