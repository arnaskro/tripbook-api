class LocalSerializer < ActiveModel::Serializer
  attributes :id, :available, :available_from, :available_to, :description, :quote, :active, :country_id, :city_id

  attribute :user do
    SimpleUserSerializer.new(object.user)
  end

end
