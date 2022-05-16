
module Reviews::Post::Handler
  include Reviews::Middlewares::Params
  include Middlewares::CreateObject
  def post
    render json: make_create_response(Review, get_review_params, child_of: {model: Company, field: :company_id})
  end

end
