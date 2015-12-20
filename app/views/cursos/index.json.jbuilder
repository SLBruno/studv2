json.array!(@cursos) do |curso|
  json.extract! curso, :id, :name, :content, :price, :image, :tag
  json.url curso_url(curso, format: :json)
end
