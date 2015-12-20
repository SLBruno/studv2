class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :name
      t.text :content
      t.integer :price
      t.string :image
      t.string :tag

      t.timestamps null: false
    end
  end
end
