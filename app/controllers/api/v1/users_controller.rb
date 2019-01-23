class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
    User.create(name: params[:name], language: params[:language])
  end

  def delete
    
  end

end
