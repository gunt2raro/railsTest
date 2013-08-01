class Post < ActiveRecord::Base
  attr_accessible :content, :title
  validate :title, :presence => true
end
