class CreateSignUps < ActiveRecord::Migration[5.2]
  def change
    create_table :sign_ups do |t|
      t.string :email
      t.integer :raffle_option_id

      t.timestamps
    end
  end
end
