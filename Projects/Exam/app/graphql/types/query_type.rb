module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :fetch_tasks, resolver: Queries::FetchTasks
    field :fetch_task, resolver: Queries::FetchTask
    field :fetch_projects, resolver: Queries::FetchProjects
    field :fetch_project, resolver: Queries::FetchProject
    field :fetch_comments, resolver: Queries::FetchComments
    field :fetch_comment, resolver: Queries::FetchComment
    field :login_user, resolver: Queries::LoginUser
    field :delete_comment, resolver: Queries::DeleteComment
    field :delete_project, resolver: Queries::DeleteProject
  end
end