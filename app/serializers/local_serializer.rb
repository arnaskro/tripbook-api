class LocalSerializer < ActiveModel::Serializer
  attributes :id, :available, :available_from, :available_to, :description, :quote, :active

  attribute :user do
    SimpleUserSerializer.new(object.user)
  end

end
