class Idea < ApplicationRecord
    validates :title, presence: true, length: { maximum: 20 }
    validates :trick, presence: true, length: { maximum: 100 }
    validates :content, presence: true, length: { maximum: 1000 }
end
