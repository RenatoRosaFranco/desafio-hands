class Case < ApplicationRecord
  self.table_name = 'cases'
  self.primary_key = 'id'

  mount_uploader :logo, FileUploader
  belongs_to :user

  validates :name,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: {minimum: 30, maximum: 300}

end
