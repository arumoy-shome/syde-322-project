class CreateJoinTableEventsAndUsers < ActiveRecord::Migration
  def change
    create_join_table :events, :users do |t|
      t.belongs_to :event, index: true
      t.belongs_to :user, index: true
    end
  end
end
