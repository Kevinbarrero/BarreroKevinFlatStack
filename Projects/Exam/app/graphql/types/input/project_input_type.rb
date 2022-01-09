module Types
    module Input
      class ProjectInputType < Types::BaseInputObject
        argument :name, String, required: true
        argument :description, String, required: true
      end
    end
  end