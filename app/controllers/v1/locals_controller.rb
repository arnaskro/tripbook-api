class V1::LocalsController < ApplicationController
  before_action :get_local, only: [:show, :update, :destroy]

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
    locals = locals.where(country_id: params[:country_id]) if params[:country_id]
    # Filter by city
    locals = locals.where(city_id: params[:city_id]) if params[:city_id]
    
    # Paginate
    locals = locals.page(page).per(per_page)

    render json: LocalListSerializer.new({
      locals: locals,
      total: locals.total_count,
      page: page,
      per_page: per_page
    }).to_json
  end


  def show
    render json: @local
  end

  private

    def get_local
      @local = Local.all.find(params[:id])

      if @local.nil?
        render json: false, status: 404
      end
    end

end