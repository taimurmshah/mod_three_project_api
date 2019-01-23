class MessageSerializer < ActiveModel::Serializer

  attributes :id, :text, :user_id, :chat_room_id, :user

  belongs_to :user
  belongs_to :chat_room

end
