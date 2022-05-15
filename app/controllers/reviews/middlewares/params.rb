
module Params
  private
  def get_review_params
    params.require(:review).permit(
      :id,
      :profile,
      :text,
      :team_rating,
      :salary_rating,
      :bureaucracy_rating,
      :degree_of_workload,
      :company_id
    )
  end
end
