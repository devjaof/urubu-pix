# fronze_string_literal: true
require './app/usecases/users/create'

class UserController
  def create(params)
    User::Create.new(params).call
  end
end