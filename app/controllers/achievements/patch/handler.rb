
require_relative '../middlewares/params'
require_relative '../../middlewares/update_object'

module AchievementUpdateHandler
  def patch
    render json: update_object(Achievement, get_company_params)
  end
end
