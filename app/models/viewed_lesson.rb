class ViewedLesson < ActiveRecord::Base
  belongs_to :user
  belongs_to :aula
end
