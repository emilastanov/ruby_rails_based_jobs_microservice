
def document_of_delete
  path "/job_posting" do
    delete "Delete job posting by id." do
      tags "Job posting"
      consumes "application/json"
      parameter name: :id, in: :query, schema: {
        type: :query,
        required: ["id"],
      }
      response "200", "Job posting has been deleted." do
        let(:status) { { status: :deleted, data: :object } }
        run_test!
      end
    end
  end
end
