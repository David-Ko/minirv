class CreateTrailers < ActiveRecord::Migration[5.2]
  def change
    create_table :trailers do |t|
      t.string :name
      t.string :image
      t.text :length
      t.text :brake
      t.text :clearance
      t.text :sleeps
      t.text :electrical
      t.text :fridge
      t.text :cooktop
      t.text :sink
      t.text :bathroom
      t.text :water
      t.text :fuel
      t.text :lighting
      t.text :description
      t.text :price

      t.timestamps
    end
  end
end
