class JobsController < ApplicationController

  def index
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new
    if @job.save
      redirect_to jobs_path
    else
      render :new
    end
  end


end
