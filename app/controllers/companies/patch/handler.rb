
module Companies::Patch::Handler
  include Middlewares::UpdateObject
  include Companies::Middlewares::Params
  def patch
    render json: make_update_response(Company, get_company_params)
  end
end
