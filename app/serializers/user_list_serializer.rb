class UserListSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :lastname, :email, :url
  
  def url
    v1_user_path(id: object.id)
  end

end
