class ItemSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :body, :list_id
end
