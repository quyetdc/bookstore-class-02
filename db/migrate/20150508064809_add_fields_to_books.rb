class AddFieldsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :name, :string
    add_column :books, :about, :text
    add_column :books, :publisher, :string
    add_column :books, :year, :string
    add_column :books, :isbn, :integer
    add_column :books, :price, :float
    add_column :books, :image, :string
  end
end
