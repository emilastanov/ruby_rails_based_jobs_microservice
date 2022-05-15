
def document_of_patch
  path "/reviews" do
    patch "Update data of review." do
      tags "Reviews"
      consumes "application/json"
      parameter name: :company, in: :body, schema: {
        type: :object,
        properties: {
          id: {type: :integer},
          text: {type: :string},
          team_rating: {type: :integer},
          salary_rating: {type: :integer},
          bureaucracy_rating: {type: :integer},
          degree_of_workload: {type: :integer}
        },
      }
      response "201", "Review updated" do
        run_test!
      end
    end
  end
end
