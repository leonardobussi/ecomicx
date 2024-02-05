class OnlyUsersController < ApplicationController
  def create
    user = User.create!(permitted_params)

    render json: { message: 'usuario criado com sucesso', user: user }, status: :created
  end

  private

  def permitted_params
    params.require(:user).permit(:email, :password, :name)
  end
end
