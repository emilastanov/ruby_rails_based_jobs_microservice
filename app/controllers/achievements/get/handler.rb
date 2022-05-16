
module Achievements::Get::Handler
  include Middlewares::GetListOrObject
  def get
    render json: make_query_response(Achievement, params)
  end
end
