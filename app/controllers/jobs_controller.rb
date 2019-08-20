class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  def show
    @job = Job.find_by(id: params[:id])
    if !@job
      redirect_to jobs_path
    end
  end



  private

  def job_params
    params.require(:job).permit(:title, :position, :description)
  end


end
