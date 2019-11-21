class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.datetime :date_task

      t.timestamps
    end
  end
end
