class Subscription < ActiveRecord::Base
  belongs_to :curso
  belongs_to :user
end