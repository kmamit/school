class Comment < ActiveRecord::Base
  attr_accessible :comment
  validates :comment,presence: true
end
