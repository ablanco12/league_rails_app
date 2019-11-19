class Game < ApplicationRecord
    validates :date, presence:{message: "needs to be filled in!"}
    validates :region, presence:true
end
