Types::DogType = GraphQL::ObjectType.define do
  name 'Dog'
  description 'A Fluffer'
  field :id, types.ID
  field :name, types.String
end
