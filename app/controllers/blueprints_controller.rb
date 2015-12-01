class BlueprintsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @blueprint = current_user.blueprints.build(blueprint_params)
    if @blueprint.save
      flash[:success] = "Blueprint created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

    def blueprint_params
      params.require(:blueprint).permit(:coursecode, :minStudents, :maxStudents, :deadline )
    end
end
