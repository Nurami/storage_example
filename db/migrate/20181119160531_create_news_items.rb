class CreateNewsItems < ActiveRecord::Migration[5.2]
  def change
    create_table :news_items do |t|
      t.string :primaryCategory
      t.string :description
      t.string :title
      t.string :url
      t.string :originalImageUrl
      t.string :thumbnail
      t.integer :words

      t.timestamps
    end
  end
end
