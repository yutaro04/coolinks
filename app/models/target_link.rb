class TargetLink < ApplicationRecord
    validates :target_id, presence: true
    belongs_to :link
    belongs_to :target
end
