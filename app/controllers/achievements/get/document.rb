
module Achievements::Get::Document
  def achievements_get_document
    path "/achievements" do
      get "Get achievement or list of achievements." do
        tags "Achievements"
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