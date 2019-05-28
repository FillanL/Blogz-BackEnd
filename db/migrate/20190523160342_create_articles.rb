class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.string :title
      t.string :content
      t.string :keyword
      t.boolean :featured, default: false
      t.string :category
      t.string :sub_category
      t.string :article_url

      t.timestamps
    end
  end
end
