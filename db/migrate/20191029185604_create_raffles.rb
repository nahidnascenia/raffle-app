class CreateRaffles < ActiveRecord::Migration[5.2]
  def change
    create_table :raffles do |t|
      t.integer :raffle_option_id
      t.integer :sign_up_id

      t.timestamps
    end
  end
end
