class GoalsController < ApplicationController
  before_action :set_goal, only: [:destroy, :edit, :update, :show]
  def index
    @goals = current_user.goals
  end

  def new
    @goal = current_user.goals.new
  end

  def create
    @goal = current_user.goals.new(goal_params)
    if @goal.save!
      redirect_to goal_params, notice: 'Journal Created Successfully!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @goal.update(goal_params)
      redirect_to goals_path, notice: 'Journal Updated Successfully!'
    else
      render :edit
    end
  end

  def destroy
    @goal.destroy
    redirect_to goals_path, notice: 'Journal Deleted Successfully!'
  end

  def show
  end

  private

  def set_goal
    @goal = Goal.find(params[:id])
  end

  def goal_params
    params.require(:goal).permit(:title, :deadline)
  end
end