
module Companies::Delete::Handler
  include Middlewares::DeleteObject
  def delete
    render json: make_delete_response(Company, params)
  end
end
