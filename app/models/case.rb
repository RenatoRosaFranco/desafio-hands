# utf-8
class Case < ApplicationRecord
  self.table_name = 'cases'
  self.primary_key = 'id'

  mount_uploader :logo, FileUploader
  belongs_to :user

  validates :logo,
            presence: false,
            format: {
              with: /\.(jpg|jpeg|png|bmp)$/,
              multiline: true
            }

  validates :name,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 300 }

  validates :description,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 245 }

  validates :link,
            presence: true,
            uniq_blank: false,
            length: { minimum: 3, maximum: 245 }

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
