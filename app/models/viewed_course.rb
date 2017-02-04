class ViewedCourse < ActiveRecord::Base
  belongs_to :user
  belongs_to :curso
end
