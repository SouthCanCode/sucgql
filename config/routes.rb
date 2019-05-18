Rails.application.routes.draw do
  resources :posts
  resources :comments

  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"

  post "/graphql", to: "graphql#execute"
end
