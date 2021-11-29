class Target < ApplicationRecord
    validates :target, presence: true
    has_many :target_links
    has_many :links, through: :target_links
end
