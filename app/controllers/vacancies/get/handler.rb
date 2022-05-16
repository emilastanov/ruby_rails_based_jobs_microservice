
module Vacancies::Get::Handler
  include Middlewares::GetListOrObject
  def get
    render json: make_query_response(Vacancy, params, search_by: [:company_id])
  end
end
