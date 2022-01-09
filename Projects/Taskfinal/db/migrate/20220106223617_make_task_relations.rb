class MakeTaskRelations < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :project_rel, :projects
  end
end
