
module Companies::Post::Document
  def companies_post_document
    path "/companies" do
      post "Create company." do
        tags "Companies"
        consumes "application/json"
        parameter name: :company, in: :body, schema: {
          type: :object,
          properties: {
            id: { type: :integer },
            title: { type: :string },
            description: { type: :string },
            founding_date: { type: :datetime },
            logotype: { type: :string },
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
