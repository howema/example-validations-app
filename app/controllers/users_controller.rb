class UsersController < ApplicationController
  def create
    user = User.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      email: params["email"],
    )

    if user.save
      render json: user.as_json
    else
      render json: { errors: users.errors.full_messages },
             status: :unprocessable_entity
    end
  end
end
