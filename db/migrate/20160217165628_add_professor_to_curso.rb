class AddProfessorToCurso < ActiveRecord::Migration
  def change
    add_column :cursos, :profname, :string
    add_column :cursos, :proflink, :string
    add_column :cursos, :profdescription, :string
    add_column :cursos, :profimage, :string
  end
end
