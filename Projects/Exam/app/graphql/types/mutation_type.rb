module Types
  class MutationType < Types::BaseObject
    field :add_task, mutation: Mutations::AddTask
    field :add_project, mutation: Mutations::AddProject
    field :add_comment, mutation: Mutations::AddComment
  end
end