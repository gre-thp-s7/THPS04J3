class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :users, index: true
      t.belongs_to :articles, index: true
      t.text :name
      t.timestamps
    end
  end
end
