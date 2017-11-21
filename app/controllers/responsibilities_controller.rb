class ResponsibilitiesController < ApplicationController
  def index
    @responsibilities = current_user.responsibilities
  end

  def new
  end

  def create
  end
end