class Todo < ActiveRecord::Base
  validates :task, presence:true, uniqueness:true
end
