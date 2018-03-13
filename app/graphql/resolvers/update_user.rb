class Resolvers::UpdateUser < GraphQL::Function
  # arguments passed as "args"
  argument :id, types.ID
  argument :first_name, types.String
  argument :last_name, types.String
  argument :phone, types.String

  # return type from the mutation
  type Types::UserType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, _ctx)
    user = User.find(args[:id])
    user.update_attributes(args.to_h)
    user
  end
end
