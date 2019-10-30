class ChangeTableNameRaffleOptionsToRaffleDraws < ActiveRecord::Migration[5.2]
  def change
    rename_table :raffle_options, :raffle_draws
  end
end
