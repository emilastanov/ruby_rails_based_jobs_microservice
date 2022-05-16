require 'swagger_helper'


RSpec.describe 'api/companies', type: :request do
  Vacancies::Delete::Document.vacancies_delete_document
  Vacancies::Post::Document.vacancies_post_document
  Vacancies::Patch::Document.vacancies_patch_document
  Vacancies::Get::Document.vacancies_get_document
end