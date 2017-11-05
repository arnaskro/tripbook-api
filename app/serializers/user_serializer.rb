class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :lastname, :email, :birthday, :age, :gender, :country_id, :city_id, :active
  attribute :local_id do
    object.get_local_id
  end

end
