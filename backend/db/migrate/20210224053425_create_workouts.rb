class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :video

      t.timestamps
    end
  end
end

