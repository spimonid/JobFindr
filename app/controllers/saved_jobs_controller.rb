class SavedJobsController < ApplicationController
  def index
    render json: SavedJob.all.as_json
  end

  def create
    saved_job = SavedJob.new(
      user_id: current_user.id,
      role: params['role'],
      remote: true
      technologies: params["technologies"],
    )
    saved_job.save
  end
end
