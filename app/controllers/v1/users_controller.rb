class V1::UsersController < ApplicationController
  before_action :get_user, only: [:show, :update, :destroy]
  before_action :check_is_same_user, only: [:update, :destroy]
  before_action :authenticate_v1_user!, only: [:destroy]

  def index
    users = User.active.page(params[:page] || 1).per(20)
    render json: ActiveModelSerializers::SerializableResource.new(users, each_serializer: UserListSerializer).to_json
  end

  def show
    render json: @user
  end

  def update
    if @user.update(user_params)
      render json: @user, status: 200
    else
      render json: @user, status: 422
    end
  end

  def destroy
    @user.update(active: false)
    render json: @user.active
  end

  def search
    # Find users
    users = User.active.search(params[:query]).page(params[:page] || 1).per(20)

    render json: ActiveModelSerializers::SerializableResource.new(users, each_serializer: UserListSerializer).to_json
  end

  private 

    def get_user
      @user = User.all.find(params[:id])

      if @user.nil?
        render json: false, status: 404
      end
    end

    def check_is_same_user
      if @user != current_v1_user
        render json: false, status: 401
      end
    end

    def user_params
      params.require(:user).permit(:name, :lastname, :age, :gender, :birthday, :country_id, :city_id)
    end

end