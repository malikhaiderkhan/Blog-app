class CreateLikes < ActiveRecord::Migration[7.1]
  def change
    create_table :likes do |t|
      t.references :UserId, null: false, foreign_key: true
      t.references :PostId, null: false, foreign_key: true
      t.date :CreatedAt
      t.date :UpdatedAt

      t.timestamps
    end
  end
end
