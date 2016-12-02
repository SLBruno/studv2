class AddPointToAula < ActiveRecord::Migration
  def change
    add_column :aulas, :point, :integer
    add_column :aulas, :time, :integer
    add_column :aulas, :downloadlink, :string
  end
end
