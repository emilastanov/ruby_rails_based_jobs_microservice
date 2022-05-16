
class AchievementsController < ApplicationController
  include Achievements::Get::Handler
  include Achievements::Patch::Handler
  include Achievements::Post::Handler
  include Achievements::Delete::Handler
end
