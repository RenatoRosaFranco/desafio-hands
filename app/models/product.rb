# utf-8
class Product < ApplicationRecord
  self.table_name = 'products'
  self.primary_key = 'id'

  mount_uploader :logo, FileUploader
  belongs_to :user

  validates :logo,
            presence: false,
            format: {
              with: /\.(jpg|bmp|png|jpeg)$/,
              multiline: true
            }

  validates :name,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 30 }

  validates :description,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 234 }

  validates :tags,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 65 }

  validates :user_id,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            numericality: { only_integer: true }
end
