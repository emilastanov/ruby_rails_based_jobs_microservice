
module Achievements::Post::Handler
  include Achievements::Middlewares::Params
  include Middlewares::CreateObject
  def post
    render json: make_create_response(Achievement, get_achievement_params)
  end
end
