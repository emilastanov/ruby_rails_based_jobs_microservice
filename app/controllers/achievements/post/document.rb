
def document_of_post
  path "/achievements" do
    post "Create achievement." do
      tags "Achievements"
      consumes "application/json"
      parameter name: :achievement, in: :body, schema: {
        type: :object,
        properties: {
          id: {type: :integer},
          title: { type: :string },
          description: { type: :string },
          logotype: { type: :string },
        },
      }
      response "201", "Achievement created" do
        let(:company) { {
          id: 1,
          title: "Achievement",
          description: "About achievement",
          logotype: "http://example.com/logo.png"
        } }
        run_test!
      end
    end
  end
end
