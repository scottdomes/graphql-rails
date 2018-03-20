Types::AddressType = GraphQL::ObjectType.define do
  name "Address"
  description "An Address"
  field :id, types.ID
  field :street, types.String
  field :city, types.String
  field :state, types.String
  field :country, types.String
end
