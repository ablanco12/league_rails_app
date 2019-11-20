class Team < ApplicationRecord
    belongs_to :game
    validates :name, presence:{message: "needs to be filled in!"}
    validates :region, presence:true

end
