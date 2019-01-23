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

end
