class UserSerializer < SimpleUserSerializer
  
  attribute :local_id do
    object.get_local_id
  end

end
