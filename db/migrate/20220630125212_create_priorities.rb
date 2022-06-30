class CreatePriorities < ActiveRecord::Migration[6.1]
  def change
    create_table :priorities do |t|
      t.integer :task_id
      t.string :low
      t.string :medium
      t.string :high
    end
  end
end
