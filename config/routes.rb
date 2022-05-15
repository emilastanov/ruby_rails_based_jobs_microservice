
def make_crud_routes(controller, cd_only: false)
  methods = if cd_only
              %w(post delete)
            else
              %w(get post patch delete)
            end

  methods.each do |method|
    send(method, controller, to: "#{controller}##{method}")
  end
end

Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/'
  mount Rswag::Api::Engine => '/'

  make_crud_routes :companies
  make_crud_routes :achievements
  make_crud_routes :reviews
  make_crud_routes :vacancies
  make_crud_routes :job_posting
  make_crud_routes :company_achievements, cd_only: true
end
