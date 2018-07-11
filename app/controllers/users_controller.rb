class UsersController < ApplicationController
  def index
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_index_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    if @user.id != 1
      @user.destroy
      if @user.destroy
          redirect_to root_url, notice: "Usuario elminiado satisfactoriamente."
      end
    else
      redirect_to root_url, notice: "No se puede eliminar al super usuario"
    end
  end
  
  def user_params
    params.require(:user).permit(:email, :admin, :manageService, :manageEvent, :manageContact, :manageAlbum, :manageAboutsecrad, :managePoll, :manageContest, :manageRadio)
  end
end
