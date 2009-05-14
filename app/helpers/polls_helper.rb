module PollsHelper
  def current_yes
    current_yes = @polls.last.yes_votes.count
  end
  
  def current_no
    current_no = @polls.last.no_votes.count
  end
  
  def current_rating
    if current_yes > current_no
      "UPGRADE"
    else
      "NOT AN UPGRADE"
    end
  end
  
  def total_votes
    total_votes = current_yes + current_no
  end
  
  def yes_percent
    yes_percent = (current_yes.to_f / total_votes.to_f * 100).to_int
  end
  
  def no_percent
    no_percent = (current_no.to_f / total_votes.to_f * 100).to_int
  end
  
  def site_link
    case RAILS_ENV
    when "development":
      site_link = "http://localhost:3000"
    when "test":
      site_link = "http://localhost:3000"
    when "production":
      site_link = "http://fitly.gritly.com"
    end
  end
end
