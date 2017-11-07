class V1::LocalsController < ApplicationController

  def index
    # Define page number
    page = params[:page] || "1"
    # Define per page
    per_page = 20

    # Find active locals
    locals = Local.active
    
    # Search
    locals = locals.search(params[:query]) if params[:query]
    
    # Paginate
    locals = locals.page(page).per(per_page)

    render json: LocalListSerializer.new({
      locals: locals,
      total: locals.total_count,
      page: page,
      per_page: per_page
    }).to_json
  end

end