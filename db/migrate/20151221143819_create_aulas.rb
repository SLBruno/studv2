class CreateAulas < ActiveRecord::Migration
  def change
    create_table :aulas do |t|
      t.string :title
      t.text :content
      t.string :video
      t.boolean :section_header, :null => false, :default => false
      t.integer :tag
      t.references :curso, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
