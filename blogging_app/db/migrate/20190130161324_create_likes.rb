class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.belongs_to :user, index: true # un like est effectué par un user sur un article
      t.belongs_to :article, index: true 
      t.timestamps # création automatique de 2 colonnes : date de création et date de modification
    end
  end
end
