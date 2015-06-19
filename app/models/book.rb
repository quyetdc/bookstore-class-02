## Book model

class Book < ActiveRecord::Base
  has_and_belongs_to_many :authors

  mount_uploader :image, ImageUploader
end