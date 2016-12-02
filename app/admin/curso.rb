ActiveAdmin.register Curso do
    permit_params :name, :content, :price, :image, :tag, :point, :color, :trilha_id, :icon, :public, :time, :profname, :proflink, :profdescription, :string, :profimage
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
