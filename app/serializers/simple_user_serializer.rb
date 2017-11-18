class SimpleUserSerializer < ActiveModel::Serializer
  attributes :id, :name, :lastname, :email, :birthday, :age, :gender, :active

  attribute :has_local do
    object.has_local?
  end
end
