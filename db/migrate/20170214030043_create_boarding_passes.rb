class CreateBoardingPasses < ActiveRecord::Migration[5.0]
  def change
    create_table :boarding_passes do |t|
      t.string :departure_airport_code
      t.string :arrival_airport_code
      t.string :flight_number
      t.string :departure_datetime

      t.timestamps
    end
  end
end
