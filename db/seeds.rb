require 'date'

User.create({
  email: 'test@test.ca',
  password: 'secret',
  last_sign_in_at: DateTime.now,
  first_name: 'Scott',
  last_name: 'Domes',
  phone: '1234567891'
})