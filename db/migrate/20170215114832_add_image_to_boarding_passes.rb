class AddImageToBoardingPasses < ActiveRecord::Migration[5.0]
  def change
    add_column :boarding_passes, :image, :string
  end
end
