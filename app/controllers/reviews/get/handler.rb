
module Reviews::Get::Handler
  def get
    render json: make_query_response(Review, params, search_by: [:company_id])
  end
end
