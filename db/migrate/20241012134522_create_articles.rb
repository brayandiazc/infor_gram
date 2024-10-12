class CreateArticles < ActiveRecord::Migration[7.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.references :location, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
