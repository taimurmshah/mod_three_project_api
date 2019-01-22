class User < ApplicationRecord

  has_many :messages
  has_many :chat_rooms, through: :messages

end
