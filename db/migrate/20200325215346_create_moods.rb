class CreateMoods < ActiveRecord::Migration[5.2]
  def change
    create_table :moods do |t|
      t.string :feeling
      t.string :url

      t.timestamps
    end
  end
end
