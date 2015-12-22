class Curso < ActiveRecord::Base
    has_many :aulas
    
    validates :name, presence: true, length: { maximum: 50 }
    validates :content, presence: true
    validates :price, presence: true, numericality: {only_integer: true}
end
