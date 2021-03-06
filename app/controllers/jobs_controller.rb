class JobsController < ApplicationController
  # before_action :check_for_logged_in, except: [:index]
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new
  if @job.save
    redirect_to job_path(@job)
  else
    render "new"
  end
  end

  # def show
  #   @job = Job.find_by(id: params[:id])
  #    # if !@job
  #    #   redirect_to jobs_path
  #    # end
  # end
  #
  # def edit
  #   @job = Job.find_by(id: params[:id])
  #  # if !@job
  #  #   redirect_to jobs_path
  #  # end
  # end
  #
  # def destroy
  #   @job = Job.find_by(id: params[:id])
  #  # if !@job
  #  #   redirect_to jobs_path
  #  # end
  #  @job.destroy
  #  redirect_to jobs_path
  # end


  private

  def job_params
    params.require(:job).permit(:title, :position, :description)
  end


end
