module Queries
    class FetchProjects < Queries::BaseQuery
  
      type [Types::ProjectType], null: false
  
      def resolve
        Project.all.order(created_at: :desc)
      end
    end
  end