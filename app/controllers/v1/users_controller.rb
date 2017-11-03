class V1::UsersController < ApplicationController
  before_action :get_user, only: [:show, :destroy]
  before_action :authenticate_v1_user!, only: [:destroy]

  def index
    users = User.active.page(params[:page] || 1).per(20)
    render json: ActiveModelSerializers::SerializableResource.new(users, each_serializer: UserListSerializer).to_json
  end

  def show
    render json: @user
  end

  def destroy
    if @user.nil?
      render status: 404
    elsif @user != current_v1_user
      render status: 401
    else
      @user.update(active: false)
      render json: @user.active
    end
  end

  private 

    def get_user
      @user = User.all.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :lastname, :age, :gender, :birthday, :country_id, :city_id)
    end

end