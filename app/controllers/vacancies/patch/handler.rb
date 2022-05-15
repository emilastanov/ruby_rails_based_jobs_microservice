
require_relative '../middlewares/params'
require_relative '../../middlewares/update_object'

module VacancyUpdateHandler
  def patch
    render json: update_object(Vacancy, get_vacancy_params)
  end
end
