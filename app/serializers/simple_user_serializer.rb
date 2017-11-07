class SimpleUserSerializer < ActiveModel::Serializer
  attributes :id, :name, :lastname, :email, :birthday, :age, :gender, :country_id, :city_id, :active
end
