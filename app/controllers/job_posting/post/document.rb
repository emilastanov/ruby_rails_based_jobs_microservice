
module JobPosting::Post::Document
  def job_posting_post_document
    path "/job_posting" do
      post "Create job posting." do
        tags "Job posting"
        consumes "application/json"
        parameter name: :job_posting, in: :body, schema: {
          type: :object,
          properties: {
            id: { type: :integer },
            profile_id: { type: :integer },
            vacancy_id: { type: :integer },
            state: { type: :string },
          },
        }
        response "201", "Company created" do
          let(:company) { {
            id: 1,
            title: "Company",
            description: "About company",
            founding_date: "2022-05-12T14:39:11.077Z",
            logotype: "http://example.com/logo.png"
          } }
          run_test!
        end
      end
    end
  end
end
