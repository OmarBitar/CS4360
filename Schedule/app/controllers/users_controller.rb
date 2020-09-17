require "base64"
require "digest"
class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    #only get the parameters we want.
    params.slice :user
    #don't need the temporaries, but makes code easer to read
    username = params[:user][:username]
    password = params[:user][:password]
    hash = Digest::SHA256.digest password
    #since the hash will probably not be a valid ascii string, encode it in base64 to ensure that the encoding will be valid. Checking of passwords remains the same when logging in.
    safe_hash = Base64.encode64(hash)
    @user = User.new
    @user.username = username
   @user.password = safe_hash
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def login
end
  def fyp
end
  def verify
    params.slice :username, :password
    user_name = params[:username]
    pass = params[:password]
    #if we can't find the user, then display the error
    user = User.find_by(username: user_name)
    if user
      if Base64.encode64(Digest::SHA256.digest(pass)) == user.password
#remember who logged in
session[:id] = user.id
session[:name] = user.username
        redirect_to "/users/success"
else
redirect_to "/users/error"
end
else
redirect_to "/users/error"
end
end
def success
end
def error
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :password)
    end
end
