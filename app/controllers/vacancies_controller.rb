
class VacanciesController < ApplicationController
  include Vacancies::Get::Handler
  include Vacancies::Patch::Handler
  include Vacancies::Post::Handler
  include Vacancies::Delete::Handler
end
