class Article < ApplicationRecord
    belongs_to :user, optional: true # un article a été posté par un utilisateur
    belongs_to :category, optional: true # un article a une catégorie
    has_many :likes # un article peux avoir plusieurs likes
    has_many :comments # un article peux avoir plusieurs commentaires
end

