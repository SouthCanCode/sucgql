module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :posts, [Types::PostType], null: false,
      description: "List all posts"
    def posts
      Post.all
    end

    field :post, Types::PostType, null: true,
      description: "Find a post" do
      argument :id, ID, required: true
    end
    def post(id:)
      Post.find_by(id: id)
    end
  end
end
