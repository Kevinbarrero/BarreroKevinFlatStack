class AddProjectIdToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :project_id, :int
  end
end
