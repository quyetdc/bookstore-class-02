ActiveAdmin.register Book do
  permit_params :id, :name, :publisher, :year, :price, :image

  index do
    selectable_column
    id_column
    column :id
    column :name
    column :publisher
    column :year
    column :price
    column :image
    actions
  end

  filter :name
  filter :year
  filter :publisher

  form do |f|
    f.inputs "Book Details" do
      f.input :name
      f.input :year
      f.input :image
      f.inputs do
        f.has_and_belongs_to_many :authors, heading: 'Authors' do |a|
          a.input :id
        end      
      end
    end
    f.actions
  end
end
