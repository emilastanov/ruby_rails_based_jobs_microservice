
require_relative '../middlewares/params'
require_relative '../../middlewares/update_object'

module JobPostingUpdateHandler
  def patch
    render json: update_object(JobPosting, get_job_posting_params)
  end
end
