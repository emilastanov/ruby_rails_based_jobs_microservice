
require_relative '../../middlewares/get_list_or_object'

module AchievementGetHandler
  def get
    render json: get_list_or_object(Achievement, params)
  end
end
