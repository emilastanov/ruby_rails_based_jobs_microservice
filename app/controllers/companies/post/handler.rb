
require_relative '../middlewares/params'
require_relative '../../middlewares/create_object'

module CompanyCreateHandler
  include Params
  def post
    render json: create_object(Company, get_company_params)
  end

end
