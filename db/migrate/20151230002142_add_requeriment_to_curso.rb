class AddRequerimentToCurso < ActiveRecord::Migration
  def change
    add_column :cursos, :requeriment, :text
  end
end
