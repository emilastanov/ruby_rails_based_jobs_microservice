
require_relative '../middlewares/params'
require_relative '../../middlewares/create_object'

module VacancyCreateHandler
  include Params
  def post
    render json: create_object(Vacancy, get_vacancy_params, child_of: {model: Company, field: :company_id})
  end

end
