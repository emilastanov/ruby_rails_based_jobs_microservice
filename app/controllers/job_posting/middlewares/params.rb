
module JobPosting::Middlewares::Params
  private
  def get_job_posting_params
    params.require(:job_posting).permit(
      :id,
      :profile_id,
      :vacancy_id,
      :state
    )
  end
end
