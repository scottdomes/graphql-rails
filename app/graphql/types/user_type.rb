Types::UserType = GraphQL::ObjectType.define do
  name 'User'
  description 'A User'
  field :id, types.ID
  field :email, types.String
  field :password, types.String
  field :first_name, types.String
  field :last_name, types.String
  field :phone, types.String
  field :dogs do
    type types[Types::DogType]
    resolve -> (user, _args, _ctx) {
      user.dogs
    }
  end
end
