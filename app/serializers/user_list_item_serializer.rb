class UserListItemSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :lastname, :email

  attribute :local_id do
    object.get_local_id
  end

  attribute :url do
    v1_user_path(id: object.id)
  end
end