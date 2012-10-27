class AddDateContentToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :finish_by, :date
    add_column :tasks, :content, :text
  end
end
