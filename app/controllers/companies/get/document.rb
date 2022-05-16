
module Companies::Get::Document
  def companies_get_document
    path "/companies" do
      get "Get company or list of companies." do
        tags "Companies"
        consumes "application/json"
        parameter name: :id, in: :query, schema: {
          type: :query,
          properties: {
            id: { type: :integer },
          }
        }
        response "200", "" do
          let(:encounter) { { patient_id: 10, provider_id: 1 } }
          run_test!
        end
      end
    end
  end
end
