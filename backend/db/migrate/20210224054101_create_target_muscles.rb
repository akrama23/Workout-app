class CreateTargetMuscles < ActiveRecord::Migration[6.1]
  def change
    create_table :target_muscles do |t|
      t.integer :workout_id
      t.integer :muscle_id

      t.timestamps
    end
  end
end
