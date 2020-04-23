class Api::V1::AssetsController < ApplicationController
  def by_date
    # Log in user account
    @user = User.find_by(name: request.headers['X-cliente'])
    
    if @user
      @user.log_in_connection += 1
      @user.save

      # Find uf value by date
      @assets = Asset.find_by(date: DateTime.parse(params[:date]))
 
      if @assets 
        render json: @assets
      else
        render json: { error: "La fecha seleccionada no fue encontrada." }, status: 400
      end
    else
      render json: { error: "El usuario es requerido." }, status: 401
    end
  end
end
