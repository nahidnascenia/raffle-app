class RaffleDraw < ApplicationRecord
  has_many :sign_ups, dependent: :destroy

  def calculate_win_percent
    (100.00 / sign_ups.count).round(2)
  end
end
