require 'swagger_helper'

require_relative '../../../app/controllers/vacancies/get/document'
require_relative '../../../app/controllers/vacancies/post/document'
require_relative '../../../app/controllers/vacancies/delete/document'
require_relative '../../../app/controllers/vacancies/patch/document'


RSpec.describe 'api/companies', type: :request do
  document_of_get
  document_of_post
  document_of_delete
  document_of_patch
end