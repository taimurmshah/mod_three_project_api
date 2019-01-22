class MessageSerializer < ActiveModel::Serializer
  attributes :id, :text, :user_id, :chat_room_id
end
