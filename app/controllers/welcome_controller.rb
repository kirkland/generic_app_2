class WelcomeController < ApplicationController
  def index
    render :text => "current_user: #{@current_user.inspect}"
  end
end
