class Artwork < ApplicationRecord
    validates :title, :image_url, presence: true
    validates :image_url, uniqueness: true
    validates :title, uniqueness: { scope: :artist_id }
    
    belongs_to :artist,
    foreign_key: :artist_id,
    class_name: 'User'

    has_many :artwork_shares

    has_many :comments, dependent: :destroy
end