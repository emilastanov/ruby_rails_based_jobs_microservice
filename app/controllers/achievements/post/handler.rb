
require_relative '../middlewares/params'
require_relative '../../middlewares/create_object'

module AchievementCreateHandler
  include Params
  def post
    render json: create_object(Achievement, get_achievement_params)
  end
end
