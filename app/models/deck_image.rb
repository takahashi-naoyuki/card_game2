class DeckImage < ApplicationRecord

    belongs_to :user
    attachment :image
end
