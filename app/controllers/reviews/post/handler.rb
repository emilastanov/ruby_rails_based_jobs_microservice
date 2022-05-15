
require_relative '../middlewares/params'
require_relative '../../middlewares/create_object'

module ReviewCreateHandler
  include Params
  def post
    render json: create_object(Review, get_review_params, child_of: {model: Company, field: :company_id})
  end

end
