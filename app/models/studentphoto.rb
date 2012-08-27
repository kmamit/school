class Studentphoto < ActiveRecord::Base
  attr_accessible :student_id,:photo
  belongs_to :student
  has_attached_file :photo,:styles => {:small => "150x150>"},
			:url => "/assets/studentphotos/:photo.photo_file_name/:style/:basename.:extension",
			:path => ":rails_root/public/assets/studentphotos/:photo.photo_file_name/:style/:basename.:extension"
		    
end
