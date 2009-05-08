class Poll < ActiveRecord::Base
  has_attached_file :before_pic,
                     :styles => { :large => "800x600>",
                                  :thumb => "400x300>" }
   validates_attachment_presence :before_pic
   validates_attachment_size :before_pic, :less_than => 5.megabytes
   validates_attachment_content_type :before_pic, :content_type => ['image/jpeg', 'image/png', 'image/pjpeg', 'image/x-png', 'image/gif']
   
   # This needs a serious refactor, but let's get it working and tested first
   has_attached_file :after_pic,
                      :styles => { :large => "800x600>",
                                   :thumb => "400x300>" }
    validates_attachment_presence :after_pic
    validates_attachment_size :after_pic, :less_than => 5.megabytes
    validates_attachment_content_type :after_pic, :content_type => ['image/jpeg', 'image/png', 'image/pjpeg', 'image/x-png', 'image/gif']
   
   validates_presence_of :title
   attr_accessible :before_pic, :title, :description, :after_pic
end
