class Comment < ApplicationRecord
    belongs_to :task
    after_initialize :default_values
    private
    def default_values
      self.task_id ||= 1
    end
end