class Project < ApplicationRecord
    has_many :tasks
    has_many :comments
end
