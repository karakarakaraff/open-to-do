class ItemSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :body, , :complete, :list_id
end
