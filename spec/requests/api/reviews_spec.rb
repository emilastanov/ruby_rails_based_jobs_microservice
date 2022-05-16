require 'swagger_helper'


RSpec.describe 'api/companies', type: :request do
  Reviews::Delete::Document.reviews_delete_document
  Reviews::Post::Document.reviews_post_document
  Reviews::Patch::Document.reviews_patch_document
  Reviews::Get::Document.reviews_get_document
end