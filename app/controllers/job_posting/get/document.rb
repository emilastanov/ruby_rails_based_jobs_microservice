
module JobPosting::Get::Document
  def job_posting_get_document
    path "/job_posting" do
      get "Get job posting or list of companies." do
        tags "Job posting"
        consumes "application/json"
        parameter name: :id, in: :query, schema: {
          type: :query,
          properties: {
            id: { type: :integer },
            vacancy_id: { type: :integer },
            profile_id: { type: :integer },
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
