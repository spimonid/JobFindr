class JobsController < ApplicationController
  def index
    render json: Job.all
  end

  def wwr
    hard_skills = ["Javascript", "Ruby", "Rails", "Vue", "React", "Angular", "Bootstrap", "Python", "Git", "PostgreSQL", "Node",
                   "Node.JS", "Heroku", "Vue.js", "Rspec", "OOP"]
    soft_skills = ["empathy", "empathetic", "collaborative", "collaboration"]
    require "rss"
    require "open-uri"
    url = "https://weworkremotely.com/categories/remote-back-end-programming-jobs.rss"

    URI.open(url) do |rss|
      feed = RSS::Parser.parse(rss)
      feed.items.each do |item|
        skills_in_post = []
        descript = item.description.downcase
        hard_skills.each do |skill|
          if descript.include?(skill.downcase)
            skills_in_post << skill
          end
        end
        new_company = Company.create(
          name: item.title.split(":")[0],
        )
        Job.create(
          company_id: new_company.id,
          role: item.title.split(":")[1],
          remote: true,
          technologies: skills_in_post.join(" | "),
          published_date: item.pubDate,
          link: item.link,
          guid: item.guid.to_s[6..-8],
          full_description: item.description,
          logo: item.description.split(">")[0][10..-4],
        )
      end
    end
  end

  def angel
    render json: HTTP.get("https://www.angel.co/jobs").body.as_json
  end
end
