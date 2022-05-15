require 'swagger_helper'

require_relative '../../../app/controllers/reviews/get/document'
require_relative '../../../app/controllers/reviews/post/document'
require_relative '../../../app/controllers/reviews/delete/document'
require_relative '../../../app/controllers/reviews/patch/document'


RSpec.describe 'api/companies', type: :request do
  document_of_get
  document_of_post
  document_of_delete
  document_of_patch
end