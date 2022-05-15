
def document_of_post
  path "/vacancies" do
    post "Create vacancy." do
      tags "Vacancies"
      consumes "application/json"
      parameter name: :vacancy, in: :body, schema: {
        type: :object,
        properties: {
          title: {type: :string},
          experience: {type: :string},
          work_type: {type: :string},
          responsibilities: {type: :string},
          requirements: {type: :string},
          salary_min: {type: :integer},
          salary_max: {type: :integer},
          work_conditions: {type: :string},
          additional_info: {type: :string},
          address: {type: :string},
          company_id: {type: :integer}
        },
      }
      response "201", "Vacancy created" do
        run_test!
      end
    end
  end
end
