class Article < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :category, optional: true
    has_many :like
    has_many :comment
end
