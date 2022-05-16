
module Companies::Delete::Document
  def companies_delete_document
    path "/companies" do
      delete "Delete company by id." do
        tags "Companies"
        consumes "application/json"
        parameter name: :id, in: :query, schema: {
          type: :query,
          required: ["id"],
        }
        response "200", "Company has been deleted." do
          let(:status) { { status: :deleted, data: :object } }
          run_test!
        end
      end
    end
  end
end
