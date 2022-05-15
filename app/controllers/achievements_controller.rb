require_relative './achievements/get/handler'
require_relative './achievements/post/handler'
require_relative './achievements/delete/handler'
require_relative './achievements/patch/handler'

class AchievementsController < ApplicationController
  include AchievementGetHandler
  include AchievementCreateHandler
  include AchievementUpdateHandler
  include AchievementDeleteHandler
end
