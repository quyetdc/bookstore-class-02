class AddFieldsToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :name, :string
    add_column :authors, :email, :string
    add_column :authors, :avatar, :string
    add_column :authors, :country, :string
    add_column :authors, :age, :integer
    add_column :authors, :about, :text
  end
end
