class YesVote < ActiveRecord::Base
  belongs_to :poll
  validates_presence_of :body
end
