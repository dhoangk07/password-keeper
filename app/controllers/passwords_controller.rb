class PasswordsController < ApplicationController
  def index
    @passwords = Password.all
  end

  def new
    @password = current_user.passwords.build
  end

  def show
  end

  def create
    @password = current_user.passwords.build(password_params)
    if @password.save
      flash[:success] = "Created password successful"
      redirect_to passwords_path
    else
      render :new
    end
  end

  def update
    @passwords = Password.update_atttribute(password_params)
    if @password.save
      flash[:success] = "Updated password successful"
      redirect_to passwords_path
    else
      render :edit
    end
  end

  def destroy
    @password.destroy
    redirect_to passwords_path
  end
  private
  def find_password
    @password = Password.find(params[:id])
  end

  def password_params
    params.require(:password).permit(:pass, :user_id)
  end
end
