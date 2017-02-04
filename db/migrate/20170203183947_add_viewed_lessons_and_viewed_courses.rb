class AddViewedLessonsAndViewedCourses < ActiveRecord::Migration
  def change
    create_table :viewed_lessons do |t|
      t.belongs_to :user, index: true
      t.belongs_to :aula, index: true
      t.boolean :completed
      t.timestamps
    end

    create_table :viewed_courses do |t|
      t.belongs_to :user, index: true
      t.belongs_to :curso, index: true
      t.boolean :completed
      t.timestamps
    end
  end
end
