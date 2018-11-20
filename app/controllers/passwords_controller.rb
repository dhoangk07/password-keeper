class PasswordsController < ApplicationController
before_action :find_password, only: %i[show edit update destroy]
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
      flash[:success] = "Password of #{@password.app} already created"
      redirect_to passwords_path
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    @passwords = Password.update_atttribute(password_params)
    if @password.save
      flash[:success] = "Password of #{@password.app} already updated"
      redirect_to passwords_path
    else
      render :edit
    end
  end

  def destroy
    @password.destroy
    flash[:danger] = "Password of #{@password.app} already deleted"
    redirect_to passwords_path
  end
  private
    def find_password
      @password = Password.find(params[:id])
    end

    def password_params
      params.require(:password).permit(:app, :pass, :user_id)
    end
end
