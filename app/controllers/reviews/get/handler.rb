
require_relative '../../middlewares/get_list_or_object'

module ReviewGetHandler
  def get
    render json: get_list_or_object(Review, params, search_by: [:company_id])
  end
end
