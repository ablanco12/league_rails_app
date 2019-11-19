class Team < ApplicationRecord
    validates :name, presence:{message: "needs to be filled in!"}
    validates :region, presence:true

end
