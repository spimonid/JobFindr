class JobsController < ApplicationController
  def index
    render json: Job.all
  end

  def wwr
    hard_skills = ["Javascript", "Ruby", "Rails", "Vue.JS", "Bootstrap", "Python"]
    soft_skills = ["empathy", "empathetic", "collaborative", "collaboration"]
    require "rss"
    require "open-uri"
    url = "https://weworkremotely.com/categories/remote-back-end-programming-jobs.rss"
    URI.open(url) do |rss|
      feed = RSS::Parser.parse(rss)
      feed.items.each do |item|
        new_company = Company.create(
          name: item.title.split(":")[0],
        )
        Job.create(
          company_id: new_company.id,
          role: item.title.split(":")[1],
          remote: true,
          technologies: item.description,
          published_date: item.pubDate,
          link: item.link,
          guid: item.guid.to_s[6..-8],
        )
        puts item.description.to_s.split("<")
      end
    end
  end
end
