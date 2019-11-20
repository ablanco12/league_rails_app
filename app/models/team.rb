class Team < ApplicationRecord
    has_many :games
    validates :name, presence:{message: "needs to be filled in!"}
    validates :region, presence:true

end
