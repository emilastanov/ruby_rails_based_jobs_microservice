require 'swagger_helper'


RSpec.describe 'api/companies', type: :request do
  Companies::Delete::Document.companies_delete_document
  Companies::Post::Document.companies_post_document
  Companies::Patch::Document.companies_patch_document
  Companies::Get::Document.companies_get_document
end
