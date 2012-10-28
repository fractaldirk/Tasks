class Task < ActiveRecord::Base
  attr_accessible :complete, :name, :finish_by, :content, :tag_list
  acts_as_taggable
  has_many :comments, :dependent => :destroy
end
