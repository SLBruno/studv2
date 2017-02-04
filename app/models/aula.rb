class Aula < ActiveRecord::Base
  has_many :users, through: :viewed_lessons

  extend FriendlyId
   friendly_id :title, use: [:slugged, :finders]

    belongs_to :curso

    validates :title, presence: true, length: { maximum: 50 }
    validates :content, presence: true
    validates :video, presence: true
    validates :curso, presence: true

    def prox
        curso.aulas.where("tag > ? AND section_header = ?", tag, false).order(:tag).first
    end

    def prev
        curso.aulas.where("tag < ? AND section_header = ?", tag, false).order(:tag).last
    end

end
