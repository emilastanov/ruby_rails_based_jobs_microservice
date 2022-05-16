
class JobPostingController < ApplicationController
  include JobPosting::Get::Handler
  include JobPosting::Patch::Handler
  include JobPosting::Post::Handler
  include JobPosting::Delete::Handler
end
