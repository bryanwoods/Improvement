module PollsHelper
  # Polls/Index Methods...
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
         
    def pie_chart_link
       pie_chart_link = "http://chart.apis.google.com/chart?chs=500x200&chd=t:#{yes_percent},#{no_percent}" + 
       "&cht=p3&chl=Upgrade|Downgrade&chco=00FF00,FF0000"
    end
    
  # Polls/Show Methods...
    def current_rating_show
      if current_yes_show > current_no_show
        "UPGRADE"
      else
        "NOT AN UPGRADE"
      end
    end
    
    def current_yes_show
      current_yes_show = @poll.yes_votes.count
    end
    
    def current_no_show
      current_no_show = @poll.no_votes.count
    end
    
    def total_votes_show
      total_votes_show = current_yes_show + current_no_show
    end
    
    # TODO: Refactor this
    def yes_percent_show
      yes_percent_show = ( @poll.yes_votes.count.to_f / ( @poll.yes_votes.count + @poll.no_votes.count ) * 100 ).to_int
    end
    
    def no_percent_show
       no_percent_show = ( @poll.no_votes.count.to_f / ( @poll.yes_votes.count + @poll.no_votes.count ) * 100 ).to_int
    end
    
    def pie_chart_show_link
       pie_chart_link = "http://chart.apis.google.com/chart?chs=500x200&chd=t:#{yes_percent_show},#{no_percent_show}" + 
      "&cht=p3&chl=Upgrade|Downgrade&chco=00FF00,FF0000"
    end
end