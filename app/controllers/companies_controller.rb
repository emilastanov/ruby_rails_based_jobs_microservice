
class CompaniesController < ApplicationController
  include Companies::Get::Handler
  include Companies::Patch::Handler
  include Companies::Post::Handler
  include Companies::Delete::Handler
end
