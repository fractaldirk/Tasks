class Comment < ActiveRecord::Base
  belongs_to :task
  attr_accessible :body, :commenter
end
