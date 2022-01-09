class Task < ApplicationRecord
    has_many :comments
    belongs_to :user
    belongs_to :project 
    after_initialize :default_values
    private
    def default_values
      self.project_id ||= 1
      self.user_id ||= 1
      self.completed ||= false
    end
end
