
require_relative '../../middlewares/delete_object'

module JobPostingDeleteHandler
  def delete
    render json: delete_object(JobPosting, params)
  end
end
