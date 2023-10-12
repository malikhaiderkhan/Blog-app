class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.references :AuthorId, null: false, foreign_key: true
      t.string :Title
      t.text :Text
      t.date :CreatedAt
      t.date :UpdatedAt
      t.integer :CommentsCounter
      t.integer :LikesCounter

      t.timestamps
    end
  end
end
