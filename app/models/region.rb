class Region < ActiveRecord::Base
  has_many :embroderies
  mount_uploader :image, AvatarUploader
end
