class Bet < ApplicationRecord
    belongs_to :user
    belongs_to :match
  
    validates :bet_type, inclusion: { in: ['1', 'X', '2'] }
    validates :bet_amount, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
  end
  