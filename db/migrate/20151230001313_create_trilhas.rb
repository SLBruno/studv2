class CreateTrilhas < ActiveRecord::Migration
  def change
    create_table :trilhas do |t|
      t.string :name
      t.string :content
      t.string :icon
      t.integer :time
      t.string :color

      t.timestamps null: false
    end
  end
end
