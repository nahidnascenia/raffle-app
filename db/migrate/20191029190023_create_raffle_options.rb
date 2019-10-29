class CreateRaffleOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :raffle_options do |t|
      t.string :option_name

      t.timestamps
    end
  end
end
