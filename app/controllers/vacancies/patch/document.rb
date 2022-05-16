
module Vacancies::Patch::Document
  def vacancies_patch_document
    path "/vacancies" do
      patch "Update data of vacancy." do
        tags "Vacancies"
        consumes "application/json"
        parameter name: :vacancy, in: :body, schema: {
          type: :object,
          properties: {
            id: { type: :integer },
            title: { type: :string },
            experience: { type: :string },
            work_type: { type: :string },
            responsibilities: { type: :string },
            requirements: { type: :string },
            salary_min: { type: :integer },
            salary_max: { type: :integer },
            work_conditions: { type: :string },
            additional_info: { type: :string },
            address: { type: :string }
          },
        }
        response "201", "Vacancy updated" do
          run_test!
        end
      end
    end
  end
end

