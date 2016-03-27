class DropTutorIdFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :tutor_id
  end
end
