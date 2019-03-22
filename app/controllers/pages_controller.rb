class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :sidebar]

  def home
    @episodes = Episode.new_from_types
  end

  def sidebar
  end

  def your_profile
    @user = current_user
  end
end
