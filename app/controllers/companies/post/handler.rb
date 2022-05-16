
module Companies::Post::Handler
  include Middlewares::CreateObject
  include Companies::Middlewares::Params
  def post
    render json: make_create_response(Company, get_company_params)
  end

end
