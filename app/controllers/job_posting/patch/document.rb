
def document_of_patch
  path "/job_posting" do
    patch "Update state of job posting." do
      tags "Job posting"
      consumes "application/json"
      parameter name: :company, in: :body, schema: {
        type: :object,
        properties: {
          id: {type: :integer},
          state: { type: :string }
        },
      }
      response "201", "Job posting state has been updated" do
        let(:company) { {
          id: 1,
          profile_id: 1,
          vacancy_id: 1,
          state: "new"
        } }
        run_test!
      end
    end
  end
end
