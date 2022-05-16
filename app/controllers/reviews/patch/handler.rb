
module Reviews::Patch::Handler
  include Middlewares::UpdateObject
  include Reviews::Middlewares::Params
  def patch
    render json: make_update_response(Review, get_review_params)
  end
end
