require 'swagger_helper'


RSpec.describe 'api/companies', type: :request do
  Achievements::Delete::Document.achievements_delete_document
  Achievements::Post::Document.achievements_post_document
  Achievements::Patch::Document.achievements_patch_document
  Achievements::Get::Document.achievements_get_document
end
