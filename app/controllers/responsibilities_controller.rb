class ResponsibilitiesController < ApplicationController
  def index
    @responsibilities = current_user.responsibilities
  end

  def new
    @responsibility = current_user.responsibilities.new
    @responsibility.status = 'New'
  end

  def create
    @responsibility = current_user.responsibilities.new(responsibilities_params)
    if @responsibility.save!
      redirect_to responsibilities_path, notice: 'Responsibility'
    else
      render :new
    end
  end

  private

  def responsibilities_params
    params.require(:responsibility).permit(:name, :details, :status, :start_date, :deadline)
  end

end

