class Api::V1::ChatRoomsController < ApplicationController

  def index
    @chats = ChatRoom.all
    render json: @chats
  end

end
