
module Vacancies::Post::Handler
  include Vacancies::Middlewares::Params
  include Middlewares::CreateObject
  def post
    render json: make_create_response(Vacancy, get_vacancy_params, child_of: {model: Company, field: :company_id})
  end

end
