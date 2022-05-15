require_relative './companies/get/handler'
require_relative './companies/post/handler'
require_relative './companies/delete/handler'
require_relative './companies/patch/handler'

class CompaniesController < ApplicationController
  include CompanyGetHandler
  include CompanyCreateHandler
  include CompanyUpdateHandler
  include CompanyDeleteHandler
end
