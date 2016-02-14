class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
    end

    create_table :subjects_tutors, id: false do |t|
      t.belongs_to :subject, index: true
      t.belongs_to :tutor, index: true
    end
  end
end
