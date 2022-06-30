class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.string :task_priority
      t.string :task_description
      t.datetime :task_date
      t.time :deadline
      t.timestamps
    end
  end
end
