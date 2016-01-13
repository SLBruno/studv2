class Curso < ActiveRecord::Base
    belongs_to :trilha
    
    has_many :aulas
    has_many :reviews
    
    has_many :subscriptions
    has_many :users, through: :subscriptions
    
    validates :name, presence: true, length: { maximum: 50 }
    validates :content, presence: true
    validates :price, presence: true, numericality: {only_integer: true}
    
    def average_rating
        reviews.blank? ? 0 : reviews.average(:star).round(2)
    end 
end
