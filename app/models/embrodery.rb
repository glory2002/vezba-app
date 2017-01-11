class Embrodery < ActiveRecord::Base
  belongs_to :region
  mount_uploader :image, AvatarUploader
end
