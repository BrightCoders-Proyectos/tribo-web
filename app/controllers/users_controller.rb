class UsersController < Clearance::UsersController


    private

    def user_params
      params.require(:user).permit(:name, :phone, :email, :password)
    end
end
