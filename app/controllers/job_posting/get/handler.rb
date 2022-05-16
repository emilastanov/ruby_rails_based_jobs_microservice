
module JobPosting::Get::Handler
  include Middlewares::GetListOrObject
  def get
    render json: make_query_response(JobPosting, params, search_by: [:vacancy_id, :profile_id])
  end
end
