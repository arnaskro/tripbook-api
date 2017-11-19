class LocalListSerializer < ActiveModel::Serializer
  attributes :total, :page, :per_page

  attribute :locals do
    ActiveModelSerializers::SerializableResource.new(object[:locals], each_serializer: LocalListItemSerializer)
  end

  def read_attribute_for_serialization(attr)
    object[attr]
  end

end

class LocalListItemSerializer < LocalSerializer
  include Rails.application.routes.url_helpers

  attribute :url do
    v1_local_path(id: object.id)
  end

  

end
