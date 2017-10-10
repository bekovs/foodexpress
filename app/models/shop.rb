class Shop < ApplicationRecord
	has_many :dishes
	mount_uploader :image, ImageUploader
end
