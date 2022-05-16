
module Achievements::Patch::Handler
  include Achievements::Middlewares::Params
  include Middlewares::UpdateObject
  def patch
    render json: make_update_response(Achievement, get_company_params)
  end
end
