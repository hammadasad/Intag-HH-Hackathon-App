class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new
    
        # Populate user hash
        @user.email = params[:user][:email]
    
        # These two fields are used by bcrypt to generate the password digest
        @user.password = params[:user][:password]
        @user.password_confirmation = params[:user][:password_confirmation]
    
        if @user.save
          # In controllers we use url
          # In views we use path
          redirect_to root_url
        else
          render :new
        end
    end
end
