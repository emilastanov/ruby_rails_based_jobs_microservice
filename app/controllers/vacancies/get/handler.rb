
require_relative '../../middlewares/get_list_or_object'

module VacancyGetHandler
  def get
    render json: get_list_or_object(Vacancy, params, search_by: [:company_id])
  end
end
