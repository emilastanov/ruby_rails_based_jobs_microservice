require_relative './reviews/get/handler'
require_relative './reviews/post/handler'
require_relative './reviews/delete/handler'
require_relative './reviews/patch/handler'

class ReviewsController < ApplicationController
  include ReviewGetHandler
  include ReviewCreateHandler
  include ReviewUpdateHandler
  include ReviewDeleteHandler
end
