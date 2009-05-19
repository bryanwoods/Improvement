class Poll < ActiveRecord::Base
  has_many :yes_votes
  has_many :no_votes
  has_attached_file :before_pic,
                     :styles => { :large => "300x200>",
                                  :thumb => "200x150>" },
                                #  :storage => :s3,
                                #  :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
                                #  :s3_permissions => 'public-read',
                                #  :s3_protocol => 'http',
                                  :path => "covers/:id/:style.:extension",
                                  :bucket => 'before_pic'
   validates_attachment_presence :before_pic
   validates_attachment_size :before_pic, :less_than => 5.megabytes
   validates_attachment_content_type :before_pic, :content_type => ['image/jpeg', 'image/png', 'image/pjpeg', 'image/x-png', 'image/gif']
   
   # This needs a serious refactor, but let's get it working and tested first
   has_attached_file :after_pic,
                      :styles => { :large => "300x200>",
                                   :thumb => "200x150>" },
                                  :storage => :s3,
                                  :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
                                  :s3_permissions => 'public-read',
                                  :s3_protocol => 'http',
                                   :path => "covers/:id/:style.:extension",
                                   :bucket => 'after_pic'
    validates_attachment_presence :after_pic
    validates_attachment_size :after_pic, :less_than => 5.megabytes
    validates_attachment_content_type :after_pic, :content_type => ['image/jpeg', 'image/png', 'image/pjpeg', 'image/x-png', 'image/gif']
   
   validates_presence_of :title
   attr_accessible :before_pic, :title, :description, :after_pic
   
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
end
