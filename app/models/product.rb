class Product < ApplicationRecord
  self.table_name = 'products'
  self.primary_key = 'id'

  mount_uploader :logo, FileUploader
  belongs_to :user
end
