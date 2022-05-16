
module Achievements::Delete::Handler
  include Middlewares::DeleteObject
  def delete
    render json: make_delete_response(Achievement, params)
  end
end
