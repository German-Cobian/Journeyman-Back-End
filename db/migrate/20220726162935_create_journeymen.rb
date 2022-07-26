class CreateJourneymen < ActiveRecord::Migration[7.0]
  def change
    create_table :journeymen do |t|
      t.string :name
      t.string :skill
      t.string :country
      t.string :city
      t.decimal :price
      t.string :journeyman_pic

      t.timestamps
    end
  end
end
