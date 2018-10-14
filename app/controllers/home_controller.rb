class HomeController < ApplicationController

  # only allows profile page to be displayed when user is authenticated
  before_action :authenticate_user!, only: [:profile]

  # logged out state
  def show
  end

  def profile
  end
end