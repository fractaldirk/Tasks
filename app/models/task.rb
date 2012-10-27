class Task < ActiveRecord::Base
  attr_accessible :complete, :name, :finish_by, :content
end
