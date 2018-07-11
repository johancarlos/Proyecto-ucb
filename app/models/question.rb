class Question < ApplicationRecord
    has_many :options, dependent: :destroy
    has_many :votes, dependent: :destroy
  
    def votes_count
      votes.count
    end
end
