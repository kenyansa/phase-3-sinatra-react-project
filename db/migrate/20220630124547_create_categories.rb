class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :category do |t|
      t.integer :task_id #foregin key
      t.string :priority
      t.time :duration
      t.string :status
      t.integer :task
    end
  end
end
