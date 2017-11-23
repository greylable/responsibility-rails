class ResponsibilitiesController < ApplicationController
  before_action :set_responsibility, only: [:destroy]
  def index
    @responsibilities = current_user.responsibilities
  end

  def new
    @responsibility = current_user.responsibilities.new
    @responsibility.status = 'New'
  end

  def create
    @responsibility = current_user.responsibilities.new(responsibility_params)
    if @responsibility.save!
      redirect_to responsibilities_path, notice: 'Responsibility Created Successfully!'
    else
      render :new
    end
  end

  def destroy
    @responsibility.destroy
    redirect_to responsibilities_path, notice: 'Responsibility Deleted Successfully!'
  end

  private

  def set_responsibility
    @responsibility = Responsibility.find(params[:id])
  end

  def responsibility_params
    params.require(:responsibility).permit(:name, :details, :status, :start_date, :deadline)
  end



end