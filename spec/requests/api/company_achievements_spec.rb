require 'rails_helper'

RSpec.describe "CompanyAchievements", type: :request do
  describe "api/company_achievements" do
    path "/company_achievements" do
      post "Create company and achievements link." do
        tags "Companies"
        consumes "application/json"
        parameter name: :company, in: :body, schema: {
          type: :object,
          properties: {
            id: {type: :integer},
            company: { type: :string },
            achievement: { type: :string }
          },
        }
        response "201", "Link created" do
          run_test!
        end
      end
    end
    path "/company_achievements" do
      delete "Delete link by id." do
        tags "Companies"
        consumes "application/json"
        parameter name: :id, in: :query, schema: {
          type: :query,
          required: ["id"],
        }
        response "200", "Link has been deleted." do
          let(:status) { { status: :deleted, data: :object } }
          run_test!
        end
      end
    end
  end
end
