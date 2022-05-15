
require_relative '../middlewares/params'
require_relative '../../middlewares/update_object'

module ReviewUpdateHandler
  def patch
    render json: update_object(Review, get_review_params)
  end
end
