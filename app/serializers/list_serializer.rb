class ListSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :title, :user_id, :private
end
