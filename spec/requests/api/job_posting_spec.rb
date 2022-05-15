require 'swagger_helper'

require_relative '../../../app/controllers/job_posting/get/document'
require_relative '../../../app/controllers/job_posting/post/document'
require_relative '../../../app/controllers/job_posting/delete/document'
require_relative '../../../app/controllers/job_posting/patch/document'


RSpec.describe 'api/companies', type: :request do
  document_of_get
  document_of_post
  document_of_delete
  document_of_patch
end