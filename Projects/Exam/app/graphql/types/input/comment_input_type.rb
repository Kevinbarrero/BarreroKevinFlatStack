module Types
    module Input
      class CommentInputType < Types::BaseInputObject
        argument :title, String, required: true
        argument :description, String, required: true
      end
    end
  end