class Api::V1::MessagesController < ApplicationController

  def index
    @messages = Message.all
    render json: @messages
  end

  def create
    @message = Message.create(text: params[:text], user_id: params[:user_id], chat_room_id: params[:chat_room_id])
    # render json: @message
    @chatroom = ChatRoom.find(params[:chat_room_id])
    @serialized_data = ActiveModelSerializers::Adapter::Json.new(
      MessageSerializer.new(@message)
    ).serializable_hash
    MessagesChannel.broadcast_to @chatroom, @message
    head :ok
  end

end
