class ResponsibilitiesController < ApplicationController
  before_action :set_responsibility, only: [:destroy, :edit, :update, :show, :complete]
  def index
    @responsibilities = current_user.responsibilities
    @completed_responsibilities = current_user.responsibilities.where(status: 'Completed')
    @incomplete_responsibilities = current_user.responsibilities.where.not(status: 'Completed')
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

  def edit
  end

  def update
    if @responsibility.update(responsibility_params)
      redirect_to responsibilities_path, notice: 'Responsibility Updated Successfully!'
    else
      render :edit
    end
  end

  def complete
    @responsibility.update(status: 'Completed')
    redirect_to responsibilities_path, notice: 'Responsibility Completed!'
  end

  def destroy
    @responsibility.destroy
    redirect_to responsibilities_path, notice: 'Responsibility Deleted Successfully!'
  end

  def show
  end

  private

  def set_responsibility
    @responsibility = Responsibility.find(params[:id])
  end

  def responsibility_params
    params.require(:responsibility).permit(:name, :details, :status, :start_date, :deadline)
  end



end