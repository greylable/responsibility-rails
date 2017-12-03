class JournalsController < ApplicationController
  before_action :set_journal, only: [:destroy, :edit, :update, :show]
  def index
    @journals = current_user.journals
  end

  def new
    @journal = current_user.journals.new
  end

  def create
    @journal = current_user.journals.new(journal_params)
    if @journal.save!
      redirect_to journal_params, notice: 'Journal Created Successfully!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @journal.update(journal_params)
      redirect_to journals_path, notice: 'Journal Updated Successfully!'
    else
      render :edit
    end
  end

  def destroy
    @journal.destroy
    redirect_to journals_path, notice: 'Journal Deleted Successfully!'
  end

  def show
  end

  private

  def set_journal
    @journal = Journal.find(params[:id])
  end

  def journal_params
    params.require(:journal).permit(:cause, :effect, :feeling)
  end

end