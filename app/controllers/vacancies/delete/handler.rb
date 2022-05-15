
require_relative '../../middlewares/delete_object'

module VacancyDeleteHandler
  def delete
    render json: delete_object(Vacancy, params)
  end
end
