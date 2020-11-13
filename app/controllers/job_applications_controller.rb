class JobApplicationsController < ApplicationController
  def create
    user = current_user
    job = Job.find(params[:job_id])
    job_application = JobApplication.new(user: user, job: job)
    if job_application.save
      redirect_to root_path, notice: "Congratulation! You've Successfully Applied For This Job"
    else
      redirect_to root_path, alert: "You've already applied for this job."
    end
  end
end
