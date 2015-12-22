class Aula < ActiveRecord::Base
  belongs_to :curso
    
    validates :title, presence: true, length: { maximum: 50 }
    validates :content, presence: true
    validates :video, presence: true
    validates :curso, presence: true
end
