require 'swagger_helper'


RSpec.describe 'api/companies', type: :request do
  JobPosting::Delete::Document.job_posting_delete_document
  JobPosting::Post::Document.job_posting_post_document
  JobPosting::Patch::Document.job_posting_patch_document
  JobPosting::Get::Document.job_posting_get_document
end