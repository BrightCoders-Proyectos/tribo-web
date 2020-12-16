class UsersController < Clearance::UsersController
  private

<<<<<<< HEAD
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
=======

    private

    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
>>>>>>> db77c1c... Delete database.yml
end
