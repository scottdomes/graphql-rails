Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :updateUser, function: Resolvers::UpdateUser.new
end
