class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.string :location
      t.integer :user_id
      t.integer :tutor_id

      t.timestamps null: false
    end
  end
end
