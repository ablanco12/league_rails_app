class Game < ApplicationRecord
    belongs_to :team
    validates :date, presence:true
    validates :team_id, presence:{message: "needs to be filled in!"}
    # accepts_nested_attributes_for :teams

end
