class CreateHappenings < ActiveRecord::Migration[5.2]
  def change
    create_table :happenings do |t|
      t.string :name
      t.integer :mood_id

      t.timestamps
    end
  end
end
