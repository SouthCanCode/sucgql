module Types
  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :post, Types::PostType, null: true
    field :body, String, null: true
    field :author, String, null: true

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
