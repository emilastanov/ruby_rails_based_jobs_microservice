
module JobPosting::Patch::Handler
  include Middlewares::UpdateObject
  include JobPosting::Middlewares::Params
  def patch
    render json: make_update_response(JobPosting, get_job_posting_params)
  end
end
