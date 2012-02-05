class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :article_id
      t.integer :category_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
