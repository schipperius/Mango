class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :article_id
      t.text :content
      t.string :name
      t.string :email
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :position
      t.integer :user_id
      t.timestamps
    end
  end
end
