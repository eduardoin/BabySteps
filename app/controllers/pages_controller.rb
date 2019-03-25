class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :sidebar]

  def home
    @episodes = Episode.new_from_types
    redirect_to tracking_kid_path(current_user.kids.first) if current_user
  end

  def sidebar
  end

  def your_profile
    @user = current_user
  end
end
