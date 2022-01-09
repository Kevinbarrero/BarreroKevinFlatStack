class AddTaskRelations < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :project_id, :int
  end
end
