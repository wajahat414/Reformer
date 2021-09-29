class UsersController < ApplicationController
    def new
        @user=User.new
    end

    def edit
        @user=User.find(params[:id])
    end

    def update
        @user=User.find(params[:id]) 
        @user.update!(user_params) 
        redirect_to @user
    end

    def show
        @user=User.find(params[:id])
    end



    def create
        @user=User.new(user_params)
       # @user=User.new(username: params[:username],email: params[:email],password: params[:password])
        if @user.save
            redirect_to new_user_path
        else
            render :new
        end
    end
    def  user_params
        params.require(:user).permit(:email,:password,:username)
    end
end


