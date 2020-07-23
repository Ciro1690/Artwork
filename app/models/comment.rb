class Comment < ApplicationRecord
    validates :body, presence: true

    belongs_to :artwork,
    foreign_key: :artwork_id,
    class_name: 'Artwork'

    belongs_to :author,
    foreign_key: :user_id,
    class_name: 'User'
end