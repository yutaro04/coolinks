class Tag < ApplicationRecord
    validates :tag_name, presence: true
    has_many :links , dependent: :destroy
end
