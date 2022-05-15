class CompanyAchievementsController < ApplicationController
  def post
    company = Company.find(params[:company])
    achievement = Achievement.find(params[:achievement])
    company.achievements << achievement

    render json: {
      status: :ok,
      data: company.achievements
    }
  end
  def delete
    achievement = Achievement.find(params[:achievement])
    Company.achievements.delete(achievement)
    render json: {
      status: :deleted,
      data: achievement
    }
  end
end
