
module JobPosting::Delete::Handler
  include Middlewares::DeleteObject
  def delete
    render json: make_delete_response(JobPosting, params)
  end
end
