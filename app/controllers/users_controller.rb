class UsersController < ApplicationController

  def index
    @users = User.search(params[:query])
    render json: @users,
           include: :family_goal,
           except: :family_goal_id
  end

  def show
    @user = User.find(params[:id])
    render json: @user,
           include: :family_goal,
           except: :family_goal_id
  end

  def create
    user_creation = UserCreation.new(user_params)
    if user_creation.save
      render json: user_creation.user,
             include: :family_goal,
             except: :family_goal_id,
             status: :created
    else
      render json: user_creation.full_messages, status: :not_acceptable
    end
  end

  def user_params
    params.require(:user).permit(:nombre, :cargo, :mundo, :area)
  end
end
