class CreateMoods < ActiveRecord::Migration[5.2]
  def change
    create_table :moods do |t|
      t.string :feeling
      t.string :date
      t.string :weather
      t.string :note
      t.string :url

      t.timestamps
    end
  end
end
