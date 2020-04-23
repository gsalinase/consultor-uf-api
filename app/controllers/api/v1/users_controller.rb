class Api::V1::UsersController < ApplicationController
  def by_user
    @users = User.find_by(name: params[:name])
 
    if @users 
      render json: @users
    else
      render json: { error: "El usuario no fue encontrado." }, status: 400
    end
  end
end
