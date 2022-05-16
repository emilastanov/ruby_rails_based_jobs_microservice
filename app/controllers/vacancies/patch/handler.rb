
module Vacancies::Patch::Handler
  include Vacancies::Middlewares::Params
  include Middlewares::UpdateObject
  def patch
    render json: make_update_response(Vacancy, get_vacancy_params)
  end
end
