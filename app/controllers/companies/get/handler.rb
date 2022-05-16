
module Companies::Get::Handler
  include Middlewares::GetListOrObject
  def get
    render json: make_query_response(Company, params, links: [:achievements])
  end
end
