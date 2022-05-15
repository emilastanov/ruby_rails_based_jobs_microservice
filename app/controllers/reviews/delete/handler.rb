
require_relative '../../middlewares/delete_object'

module ReviewDeleteHandler
  def delete
    render json: delete_object(Review, params)
  end
end
