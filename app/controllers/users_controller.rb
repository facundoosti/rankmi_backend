class UsersController < ApplicationController

  def index
    @users = if params[:query].present?
      User.search_query(params[:query])
    else
      User.all
    end
    render json: @users
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: 201
    else
      render json: {}, status: 422
    end
  end

  def user_params
    params.require(:user).permit(:nombre, :cargo, :mundo, :area)
  end
end
