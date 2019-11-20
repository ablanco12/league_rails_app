class Game < ApplicationRecord
    has_many :teams
    validates :date, presence:true
    validates :team_id, presence:{message: "needs to be filled in!"}

end
