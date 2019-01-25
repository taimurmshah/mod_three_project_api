class MessagesChannel < ApplicationCable::Channel
  def subscribed
    @chatroom = ChatRoom.find(params[:chat_room_id])
    stream_for @chatroom
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
