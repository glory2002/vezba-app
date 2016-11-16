class AddAvatarToRegions < ActiveRecord::Migration
  def change
    add_column :regions, :avatar, :string
  end
end
