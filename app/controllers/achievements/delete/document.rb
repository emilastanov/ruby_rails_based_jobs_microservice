
def document_of_delete
  path "/achievements" do
    delete "Delete achievement by id." do
      tags "Achievements"
      consumes "application/json"
      parameter name: :id, in: :query, schema: {
        type: :query,
        required: ["id"],
      }
      response "200", "Achievement has been deleted." do
        let(:status) { { status: :deleted, data: :object } }
        run_test!
      end
    end
  end
end
