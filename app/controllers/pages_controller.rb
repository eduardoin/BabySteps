class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :sidebar]

  def home
  end

  def sidebar
  end

end
