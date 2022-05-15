
require_relative '../../middlewares/get_list_or_object'

module CompanyGetHandler
  def get
    render json: get_list_or_object(Company, params, links: [:achievements])
  end
end
