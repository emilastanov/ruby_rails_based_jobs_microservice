
require_relative '../middlewares/params'
require_relative '../../middlewares/create_object'

module JobPostingCreateHandler
  include Params
  def post
    render json: create_object(JobPosting, get_job_posting_params, child_of: {model: Vacancy, field: :vacancy_id})
  end

end
