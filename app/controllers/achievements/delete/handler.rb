
require_relative '../../middlewares/delete_object'

module AchievementDeleteHandler
  def delete
    render json: delete_object(Achievement, params)
  end
end
