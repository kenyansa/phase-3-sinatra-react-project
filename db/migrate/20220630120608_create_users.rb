class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :password
      t.string :firstname
      t.string :surname
      t.string :email
      t.boolean :registered
      t.integer :task_id #foreign key
      t.timestamps
    end
  end
end
