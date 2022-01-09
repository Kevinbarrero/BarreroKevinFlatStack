module Types
    module Input
      class TaskInputType < Types::BaseInputObject
        argument :title, String, required: true
        argument :description, String, required: true
      end
    end
  end