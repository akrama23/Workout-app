class UserSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :image, :email, :id, :workouts
end

  # This is just making it whenever it is used (auth_controller create method)
  #   it only allows the following attributes through