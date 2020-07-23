class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    has_many :artworks,
    foreign_key: :artist_id

    has_many :shared_artworks,
    through: :artwork_shares,
    source: :artwork

    has_many :comments, dependent: :destroy
end