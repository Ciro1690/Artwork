class UsersController < ApplicationController
    def index
        if params[:query]
            @users = Users.where('username LIKE ?',"%{params[:query]}%")
        else
            @users = User.all
        end
        render :index
    end

    def new
        @user = User.new
        render :new
    end

    def create
        # user = User.new(user_params)
        # # replace the `user_attributes_here` with the actual attribute keys
        # if user.save
        #     render json: user, status: :created
        # else
        #     render json: user.errors.full_messages, status: :unprocessable_entity
        # end
        @user = User.new(user_params)

        if @user.save
            redirect_to user_url(@user)
        else
            render :new
        end
    end

    def show
        @user = User.find_by(id: params[:id])

        if @user
            render :show
        else
            redirect_to users_url
        end
    end

    def edit
        @user = User.find_by(id: params[:id])
        render :edit
    end

    def update
        @user = User.find_by(id: params[:id])

        success = @user.update_attributes(user_params)
        if success
            redirect_to user_url(@user)
        else
            render :edit
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: user
    end

    protected
    def user_params
        params.require(:user).permit(:username)
    end
end 