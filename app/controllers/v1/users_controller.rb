class V1::UsersController < ApiController
  before_action :get_user, only: [:show, :update, :destroy]
  before_action :check_is_same_user, only: [:update, :destroy]
  before_action :authenticate_v1_user!, only: [:destroy]

  def index
    # Define page number
    page = params[:page] || "1"
    # Define per page
    per_page = 20

    # Find active users
    users = User.active
    
    # Search
    users = users.search(params[:query]) if params[:query]
    
    # Paginate
    users = users.page(page).per(per_page)

    render json: UserListSerializer.new({
      users: users,
      total: users.total_count,
      page: page,
      per_page: per_page
    }).to_json
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

  private 

    def get_user
      @user = User.all.find(params[:id])

      if @user.nil?
        render json: false, status: 404
      end
    end

    def user_params
      params.require(:user).permit(:name, :lastname, :age, :gender, :birthday)
    end

end