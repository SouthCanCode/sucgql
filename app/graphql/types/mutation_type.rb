module Types
  class MutationType < Types::BaseObject
    field :add_comment, mutation: Mutations::CreateComment,
      description: "Add comment to a post"

  end
end
