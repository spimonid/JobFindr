class SavedJobsController < ApplicationController
  def index
    saved_jobs = SavedJob.where(user_id: current_user.id, status: "saved")
    render json: saved_jobs
  end

  def create
    saved_job = SavedJob.new(
      user_id: current_user.id,
      job_id: params["job_id"],
      status: "saved",
    )
    if saved_job.save
      render json: saved_job.as_json
    else
      render json: { errors: saved_job.errors.full_messages }, status: 422
    end
  end
end
