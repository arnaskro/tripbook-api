class V1::LocalsController < ApiController
  before_action :get_local, only: [:show, :update, :destroy]
  before_action :authenticate_v1_user!, only: [:create, :update, :destroy]

  def index
    # Define page number
    page = params[:page] || "1"
    # Define per page
    per_page = 20

    # Find active locals
    locals = Local.active
    
    # Filter by query
    locals = locals.search(params[:query]) if params[:query]
    # Filter by country
    locals = locals.joins(:city).where("cities.country_id LIKE ?", params[:country_id]) if params[:country_id]
    # Filter by city
    locals = locals.where(city_id: params[:city_id]) if params[:city_id]

    # Filter by availability
    locals = locals.where(available: true) if params[:available]
    
    # Paginate
    locals = locals.page(page).per(per_page)

    render json: LocalListSerializer.new({
      locals: locals,
      total: locals.total_count,
      page: page,
      per_page: per_page
    }).to_json
  end

  def create
    local = current_v1_user.local

    if local.nil?
      local = Local.new(local_params)
      local.user_id = current_v1_user.id

      if local.save
        render json: local, status: 201
      else
        render json: local.errors.full_messages, status: 422
      end
    else

      if !local.active
        local.update(active: true)
        render json: local, status: 200
      else
        render json: local, status: 400
      end
    end

  end


  def show
    render json: @local
  end
  
  def update
    if @local.update(local_params)
      render json: @local, status: 200
    else
      render json: @local, status: 400
    end
  end
  
  def destroy
    if @local.update(active: false)
      render json: @local, status: 200
    else
      render json: @local, status: 400
    end
  end

  private

    def get_local
      @local = Local.all.find(params[:id])

      if @local.nil?
        render json: false, status: 404
      end
    end

    def local_params
      params.require(:local).permit(:description, :quote, :available, :city_id)
    end

end