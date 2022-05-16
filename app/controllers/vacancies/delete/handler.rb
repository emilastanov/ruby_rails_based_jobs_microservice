
module Vacancies::Delete::Handler
  include Middlewares::DeleteObject
  def delete
    render json: make_delete_response(Vacancy, params)
  end
end
