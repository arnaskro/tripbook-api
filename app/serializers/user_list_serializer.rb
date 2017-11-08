class UserListSerializer < ActiveModel::Serializer
  attributes :total, :page, :per_page

  attribute :users do
    ActiveModelSerializers::SerializableResource.new(object[:users], each_serializer: UserListItemSerializer)
  end

  def read_attribute_for_serialization(attr)
    object[attr]
  end

end

