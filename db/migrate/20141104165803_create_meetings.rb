class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.datetime :start_at

      t.timestamps null: false
    end
  end
end
