class CreateUserTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :user_tasks do |t|
      t.belongs_to :user, index: true
      t.belongs_to :task, index: true
      t.integer :done

      t.timestamps
    end
  end
end