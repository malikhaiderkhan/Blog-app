class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.references :UserId, null: false, foreign_key: true
      t.references :PostId, null: false, foreign_key: true
      t.text :Text
      t.date :UpdatedAt
      t.date :CreatedAt

      t.timestamps
    end
  end
end
