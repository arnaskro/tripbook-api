class UserListSerializer < ActiveModel::Serializer
  attributes :total, :page, :per_page

  attribute :users do
    ActiveModelSerializers::SerializableResource.new(object[:users], each_serializer: UserListItemSerializer)
  end

  def read_attribute_for_serialization(attr)
    object[attr]
  end

end

class UserListItemSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :lastname, :email, :url
  
  def url
    v1_user_path(id: object.id)
  end

end
