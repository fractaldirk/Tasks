class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :task

      t.timestamps
    end
    add_index :comments, :task_id
  end
end
