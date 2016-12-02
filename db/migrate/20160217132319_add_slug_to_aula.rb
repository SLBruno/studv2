class AddSlugToAula < ActiveRecord::Migration
  def change
    add_column :aulas, :slug, :string
    add_index :aulas, :slug, unique: true
  end
end
