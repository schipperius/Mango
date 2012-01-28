class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :introduction
      t.string :image_url
      t.text :description
      t.text :footnotes
      t.datetime :published_at
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :position
      t.integer :comments_count

      t.timestamps
    end
  end
end
