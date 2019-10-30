class SignUp < ApplicationRecord
  belongs_to :raffle_draw

  def self.calculate_win_percent(raffle_draw_id)
    return (100.00 / SignUp.where(raffle_draw_id: raffle_draw_id).size).round(2)
  end
end
