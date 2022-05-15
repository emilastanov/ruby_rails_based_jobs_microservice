
def document_of_delete
  path "/vacancies" do
    delete "Delete vacancy by id." do
      tags "Vacancies"
      consumes "application/json"
      parameter name: :id, in: :query, schema: {
        type: :query,
        required: ["id"],
      }
      response "200", "Vacancy has been deleted." do
        let(:status) { { status: :deleted, data: :object } }
        run_test!
      end
    end
  end
end
