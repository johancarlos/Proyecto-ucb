class Option < ApplicationRecord
    has_many :vote, dependent: :destroy
    belongs_to :question
  
    def votes
      Vote.where({ option_id: self.id }).count
    end
end
