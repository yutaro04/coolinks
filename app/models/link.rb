class Link < ApplicationRecord
    validates :url, presence: true
    validates :text, presence: true
    validates :name, presence: true, length: { maximum: 18 }
    belongs_to :tag
    has_many :target_links
    has_many :targets, through: :target_links
    validates :tag_id, presence: true
end
