
def document_of_get
  path "/reviews" do
    get "Get review or list of reviews." do
      tags "Reviews"
      consumes "application/json"
      parameter name: :id, in: :query, schema: {
        type: :query,
        properties: {
          id: { type: :integer },
          company_id: { type: :integer}
        }
      }
      response "200", "" do
        run_test!
      end
    end
  end
end
