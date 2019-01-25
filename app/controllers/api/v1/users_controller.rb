class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(name: params[:name], language: params[:language])
    render json: @user
  end

  def delete

  end


  #how do i create a current_user variable and/or method
  #when doing API and separate front-end?

  #would it go in the controller or in the model?

  #i believe I need this method/variable in order to establish
  #the ActionCable connection... right?

end
