class AreaSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :type, :url
  
  def type
    object.class.name.downcase
  end

  def url
    v1_area_path(type: type, id: object.id)
  end

end
