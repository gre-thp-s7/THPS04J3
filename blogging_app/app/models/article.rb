class Article < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :like
    has_many :comment
end
