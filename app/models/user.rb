class User < ApplicationRecord

  mount_uploader :photo, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # attr_accessible :email, :password, :name, :photo, :photo_cache, :remove_photo

  # validates_presence_of :photo
  # validates_integrity_of :photo
  # validates_processing_of :photo
end
