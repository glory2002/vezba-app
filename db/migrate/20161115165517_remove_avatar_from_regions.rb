class RemoveAvatarFromRegions < ActiveRecord::Migration
  def change
    remove_column :regions, :avatar, :string
  end
end
