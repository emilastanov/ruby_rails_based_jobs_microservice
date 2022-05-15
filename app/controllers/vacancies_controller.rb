require_relative './vacancies/get/handler'
require_relative './vacancies/post/handler'
require_relative './vacancies/delete/handler'
require_relative './vacancies/patch/handler'

class VacanciesController < ApplicationController
  include VacancyGetHandler
  include VacancyCreateHandler
  include VacancyUpdateHandler
  include VacancyDeleteHandler
end
