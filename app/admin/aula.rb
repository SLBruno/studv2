ActiveAdmin.register Aula do
    permit_params :title, :content, :video, :section_header, :tag, :curso_id, :time, :downloadlink, :point
    
    sortable tree: false, 
             sorting_attribute: :tag
    
    index :as => :sortable do
        label :title
        
        actions 
    end 
    
    index do 
        selectable_column
        column :header
        column :title
        column :tag
        column :curso
        
       actions
    end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
