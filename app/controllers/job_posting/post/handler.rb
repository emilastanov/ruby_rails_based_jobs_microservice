
module JobPosting::Post::Handler
  include Middlewares::CreateObject
  include JobPosting::Middlewares::Params
  def post
    render json: make_create_response(JobPosting, get_job_posting_params, child_of: {model: Vacancy, field: :vacancy_id})
  end

end
