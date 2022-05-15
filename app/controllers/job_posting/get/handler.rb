
require_relative '../../middlewares/get_list_or_object'

module JobPostingGetHandler
  def get
    render json: get_list_or_object(JobPosting, params, search_by: [:vacancy_id, :profile_id])
  end
end
