module Types
    module Input
      class UserInputType < Types::BaseInputObject
        argument :email, String, required: true
        argument :password, String, required: true
      end
    end
  end