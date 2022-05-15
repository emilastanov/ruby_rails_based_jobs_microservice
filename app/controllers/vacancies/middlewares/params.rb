
module Params
  private
  def get_vacancy_params
    params.require(:vacancy).permit(
      :id,
      :title,
      :experience,
      :work_type,
      :responsibilities,
      :requirements,
      :salary_min,
      :salary_max,
      :work_conditions,
      :additional_info,
      :address,
      :company_id
    )
  end
end
