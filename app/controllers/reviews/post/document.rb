
module Reviews::Post::Document
  def reviews_post_document
    path "/reviews" do
      post "Create review." do
        tags "Reviews"
        consumes "application/json"
        parameter name: :company, in: :body, schema: {
          type: :object,
          properties: {
            text: { type: :string },
            team_rating: { type: :integer },
            salary_rating: { type: :integer },
            bureaucracy_rating: { type: :integer },
            degree_of_workload: { type: :integer },
            company_id: { type: :integer }
          },
        }
        response "201", "Review created" do
          run_test!
        end
      end
    end
  end
end
