class JobsController < ApplicationController
  def index
    render json: Job.all.as_json
  end

  def wwr
    response = HTTP.get("https://weworkremotely.com/remote-jobs.rss").body
    render json: response
  end
end
