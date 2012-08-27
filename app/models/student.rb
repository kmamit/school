class Student < ActiveRecord::Base
 attr_accessible :name, :rollno ,:photo 
 has_many :studentphotos
 has_attached_file :photo
end
