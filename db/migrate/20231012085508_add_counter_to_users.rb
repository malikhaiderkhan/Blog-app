# frozen_string_literal: true

class AddCounterToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :post_count, :integer
  end
end
