
module Params
  private
  def get_company_params
    params.require(:company).permit(
      :id,
      :title,
      :description,
      :founding_date,
      :logotype
    )
  end
end
