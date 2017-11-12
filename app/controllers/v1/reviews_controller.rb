class V1::ReviewsController < ApiController
  before_action :get_object, only: [:index, :create]
  before_action :authenticate_v1_user!, only: [:create, :destroy]

  # [GET] /v1/reviews/:object_type/:object_id
  def index
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
    review = Review.find(params[:id])
    if review.delete
      render json: true, status: 200
    else
      render json: false, status: 400
    end
  end

  private

    def get_object
      if params[:object_type]
        @object = params[:object_type].downcase.classify.constantize.where(id: params[:object_id]).first
      else
        render json: { error: "Object doesn't not exist!" }, status: 400 and return
      end
    end

    def review_params
      params.require(:review).permit(:text, :stars)
    end

end