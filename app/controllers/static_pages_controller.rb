class StaticPagesController < ApplicationController
  def home
  	  @blueprint = current_user.blueprints.build if logged_in?
  end

  def help
  end

  def about
  end

  def contact
  end
end
