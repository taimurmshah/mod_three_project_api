class MessageSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :text, :user_id, :chat_room_id, :user


end
