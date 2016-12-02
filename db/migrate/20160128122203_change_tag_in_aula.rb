class ChangeTagInAula < ActiveRecord::Migration
  def change
      change_column :aulas, :tag, :integer
  end
end
