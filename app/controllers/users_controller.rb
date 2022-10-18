class UsersController < ApplicationController
    def index
        @users = User.all
    end
    def new
        @user = User.new
    end
    def create
        @user = User.new(uid: params[:user][:uid], pass: BCrypt::Password.create(params[:user][:pass]))
        @user.save
        redirect_to root_path
    end
    def destroy
        tweet = User.find(params[:id])
        tweet.destroy
        redirect_to root_path
    end
end
