class AddColorToCurso < ActiveRecord::Migration
  def change
    add_column :cursos, :color, :string
    add_reference :cursos, :trilha, index: true
    add_foreign_key :cursos, :trilhas
    add_foreign_key :cursos, :subtrilhas
    add_column :cursos, :icon, :string
    add_column :cursos, :public, :text
    add_column :cursos, :time, :integer
    add_column :cursos, :indexicon, :string
    add_column :cursos, :point, :integer
  end
end
