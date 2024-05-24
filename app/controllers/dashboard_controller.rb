# app/controllers/dashboard_controller.rb

class DashboardController < ApplicationController
  def index
    @users = User.all
    @matches = Match.all
    # Any other logic you want to run when displaying the dashboard
  end

  def submit_admin_form
    # Your code for handling the admin form submission goes here
  end

  def submit_regular_form
    # Your code for handling the regular form submission goes here
  end
end