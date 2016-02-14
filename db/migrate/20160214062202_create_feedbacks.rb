class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.float :rating
      t.string :comment
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
