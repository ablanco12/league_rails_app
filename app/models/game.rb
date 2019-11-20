class Game < ApplicationRecord
    has_many :teams
    validates :date, presence:{message: "needs to be filled in!"}
    # validates :team_id, presence:true

end
