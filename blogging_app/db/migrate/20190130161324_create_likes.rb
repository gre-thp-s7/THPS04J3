class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.belongs_to :users, index: true
      t.belongs_to :articles, index: true
      t.timestamps
    end
  end
end
