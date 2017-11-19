class V1::ReviewsController < ApiController
  before_action :get_object, only: [:index, :create]
  before_action :authenticate_v1_user!, only: [:create, :destroy]

  # [GET] /v1/reviews/:object_type/:object_id
  def index
    if !@object.nil?
      # Get reviews
      reviews = @object.reviews
      # Paginate
      reviews = reviews.page(params[:page] || 1).per(params[:per_page] || 10)
    
      render json: {
        reviews: reviews,
        total: reviews.total_count,
        page: reviews.current_page,
        per_page: reviews.limit_value
      }
    else
      render json: {
        reviews: [],
        total: 0,
        page: 1,
        per_page: 10
      }
    end
  end

  # [POST] /v1/reviews/:object_type/:object_id
  def create
    review = Review.create(review_params.merge(object: @object, user: current_v1_user))

    if review.valid?
      render json: review, status: 201
    else
      render json: review.errors.full_messages, status: 422
    end
  end

  # [DELETE] /v1/reviews/:id
  def destroy
    review = Review.where(id: params[:id]).first
    # Make sure that only the user who wrote the review or the user who created the trip or the local person can only delete the trip
    if review.user == current_v1_user || review.object.user == current_v1_user
      # Delete it
      if review.delete
        render json: true, status: 200
      else
        render json: false, status: 400
      end
    else
      render json: { error: "You have no rights!" }, status: 201
    end
  end

  private

    def get_object
      if  params[:object_id] && (params[:object_type].downcase === "local" || params[:object_type].downcase === "city" || params[:object_type].downcase === "trip")
        @object = params[:object_type].downcase.classify.constantize.where(id: params[:object_id]).first
      else
        render json: { error: "#{params[:object_type]} is not a valid type" }, status: 400 and return
      end
    end

    def review_params
      params.require(:review).permit(:text, :stars)
    end

end