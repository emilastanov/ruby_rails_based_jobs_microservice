
module Achievements::Middlewares::Params
  private
  def get_achievement_params
    params.require(:achievement).permit(
      :id,
      :title,
      :description,
      :logotype
    )
  end
end
