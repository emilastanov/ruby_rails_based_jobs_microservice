
module Vacancies::Get::Document
  def vacancies_get_document
    path "/vacancies" do
      get "Get vacancy or list of vacancies." do
        tags "Vacancies"
        consumes "application/json"
        parameter name: :vacancy, in: :query, schema: {
          type: :query,
          properties: {
            id: { type: :integer },
            company_id: { type: :integer }
          }
        }
        response "200", "" do
          run_test!
        end
      end
    end
  end
end
