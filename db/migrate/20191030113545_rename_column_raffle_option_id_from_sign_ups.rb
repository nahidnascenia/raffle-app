class RenameColumnRaffleOptionIdFromSignUps < ActiveRecord::Migration[5.2]
  def change
    rename_column :sign_ups, :raffle_option_id, :raffle_draw_id
  end
end
