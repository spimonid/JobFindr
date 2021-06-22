class JobsController < ApplicationController
  def index
    render json: Job.all.as_json
  end

  def wwr
    response = HTTP.get("https://weworkremotely.com/remote-jobs.rss").body
    render json: response.as_json

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
end
