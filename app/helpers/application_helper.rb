# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
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
