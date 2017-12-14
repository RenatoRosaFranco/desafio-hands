# utf-8
class User < ApplicationRecord
  self.table_name = 'users'
  self.primary_key = 'id'

  has_many :cases, dependent: :destroy
  has_many :products, dependent: :destroy

  mount_uploader :avatar, FileUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
