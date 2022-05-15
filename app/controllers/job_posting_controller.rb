require_relative './job_posting/get/handler'
require_relative './job_posting/post/handler'
require_relative './job_posting/delete/handler'
require_relative './job_posting/patch/handler'

class JobPostingController < ApplicationController
  include JobPostingGetHandler
  include JobPostingCreateHandler
  include JobPostingUpdateHandler
  include JobPostingDeleteHandler
end
