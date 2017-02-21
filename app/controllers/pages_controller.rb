class PagesController < ApplicationController
  def home
  
  end

  def about
    @skills = Skill.all
  end


  def tech_news
    @news = SocialTool.twitter_search
  end
end
