class JobsController < ApplicationController
  def index
    render json: Job.all
  end

  def wwr
    require "rss"
    require "open-uri"
    arr = []
    url = "https://weworkremotely.com/categories/remote-back-end-programming-jobs.rss"
    URI.open(url) do |rss|
      feed = RSS::Parser.parse(rss)
      feed.items.each do |item|
        dict = {}
        dict["Item"] = item.title
        dict["Desc"] = item.description
        dict["Published"] = item.pubDate
        arr << dict
        # dictitem.title.split(":")[0]
      end
    end
    render json: arr
  end

  # def create
  #   job = Job.new(
  #     company_id:
  #     role: params["role"]
  #     remote: true
  #     technologies: params["technologies"]
  #   )
  #   if job.sav
  #     puts 'job saved'
  #   else
  #     render json: { errors: job.errors.full_messages }, status: 422
  #   end
  # end

  # url = "https://weworkremotely.com/remote-jobs.rss"
  # open(url)
  # open(url) do |rss|
  #   feed = RSS::Parser.parse(rss)
  #   puts "Title: #{feed.channel.title}"
  #   feed.items.each do |item|
  #     puts "Item: #{item.title}"
  #   end
  # end

  # url = "https://weworkremotely.com/categories/remote-back-end-programming-jobs.rss"
  # HTTParty.get(url).body

end
