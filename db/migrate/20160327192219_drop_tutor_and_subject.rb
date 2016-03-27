class DropTutorAndSubject < ActiveRecord::Migration
  def change
    drop_table :tutors
    drop_table :subjects
    drop_table :subjects_tutors
  end
end
