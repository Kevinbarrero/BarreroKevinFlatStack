module Queries
    class LoginUser < Queries::BaseQuery
      type Types::UserType, null: false
      argument :email, String, required: true
      argument :password, String, required: true
  
      def resolve(email:, password:)
        User.find_by_email(email).authenticate(password)
        
      rescue ActiveRecord::RecordNotFound => _e
        GraphQL::ExecutionError.new('login failed')
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
          " #{e.record.errors.full_messages.join(', ')}")
      end
    end
  end