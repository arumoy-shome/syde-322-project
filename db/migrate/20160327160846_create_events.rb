class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to :tutor, index: true, foreign_key: true
      t.string :location
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps null: false
    end
  end
end
