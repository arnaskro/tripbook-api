class SimpleUserSerializer < ActiveModel::Serializer
  attributes :id, :name, :lastname, :email, :birthday, :age, :gender, :active
end
