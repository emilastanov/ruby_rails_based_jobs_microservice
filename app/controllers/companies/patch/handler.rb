
require_relative '../middlewares/params'
require_relative '../../middlewares/update_object'

module CompanyUpdateHandler
  def patch
    render json: update_object(Company, get_company_params)
  end
end
