
require_relative '../../middlewares/delete_object'

module CompanyDeleteHandler
  def delete
    render json: delete_object(Company, params)
  end
end
