class EnrolledUsersController < ApplicationController
  before_action :set_enrolled_user, only: [:show, :edit, :update, :destroy]

  # GET /enrolled_users
  # GET /enrolled_users.json
  def index
    @enrolled_users = EnrolledUser.all
  end

  # GET /enrolled_users/1
  # GET /enrolled_users/1.json
  def show
  end

  # GET /enrolled_users/new
  def new
    @enrolled_user = EnrolledUser.new
  end

  # GET /enrolled_users/1/edit
  def edit
  end

  # POST /enrolled_users
  # POST /enrolled_users.json
  def create
    @enrolled_user = EnrolledUser.new(enrolled_user_params)

    respond_to do |format|
      if @enrolled_user.save
        format.html { redirect_to @enrolled_user, notice: 'Enrolled user was successfully created.' }
        format.json { render :show, status: :created, location: @enrolled_user }
      else
        format.html { render :new }
        format.json { render json: @enrolled_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrolled_users/1
  # PATCH/PUT /enrolled_users/1.json
  def update
    respond_to do |format|
      if @enrolled_user.update(enrolled_user_params)
        format.html { redirect_to @enrolled_user, notice: 'Enrolled user was successfully updated.' }
        format.json { render :show, status: :ok, location: @enrolled_user }
      else
        format.html { render :edit }
        format.json { render json: @enrolled_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrolled_users/1
  # DELETE /enrolled_users/1.json
  def destroy
    @enrolled_user.destroy
    respond_to do |format|
      format.html { redirect_to enrolled_users_url, notice: 'Enrolled user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrolled_user
      @enrolled_user = EnrolledUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enrolled_user_params
      params.require(:enrolled_user).permit(:name, :userId, :photoEncoding)
    end
end
