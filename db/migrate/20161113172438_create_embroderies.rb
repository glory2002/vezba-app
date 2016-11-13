class CreateEmbroderies < ActiveRecord::Migration
  def change
    create_table :embroderies do |t|
      t.string :name
      t.string :image
      t.references :region, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
