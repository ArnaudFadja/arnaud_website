class ProtagonistsController < ApplicationController
  before_action :set_protagonist, only: [:show, :edit, :update, :destroy]

  # GET /protagonists
  # GET /protagonists.json
  def index
    @protagonists = Protagonist.all
  end

  # GET /protagonists/1
  # GET /protagonists/1.json
  def show
    @protagonist = set_protagonist
  end

  # GET /protagonists/new
  def new
    @protagonist = Protagonist.new
    authorize @protagonist
  end

  # GET /protagonists/1/edit
  def edit
    @protagonist = set_protagonist
  end

  # POST /protagonists
  # POST /protagonists.json
  def create
    @protagonist = Protagonist.new(protagonist_params)
    authorize @protagonist
    #avatar = params[:avatar]
    #@protagonist.avatar.attach(avatar)
    #@protagonist.profile.attach(params[:protagonist][:profile])
    respond_to do |format|
      if @protagonist.save!
        #if avatar
        #  @protagonist.avatar.attach(avatar)
        #end
        format.html { redirect_to @protagonist, notice: 'Protagonist was successfully created.' }
        format.json { render :show, status: :created, location: @protagonist }
      else
        format.html { render :new }
        format.json { render json: @protagonist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /protagonists/1
  # PATCH/PUT /protagonists/1.json
  def update
    @protagonist = set_protagonist
    authorize @protagonist
    #avatar = params[:avatar]
    #@protagonist.avatar.attach(avatar)
    #@protagonist.profile.attach(params[:protagonist][:profile])
    respond_to do |format|
      if @protagonist.update(protagonist_params)
        #if avatar
        #  @protagonist.avatar.attach(avatar)
        #end
        format.html { redirect_to articles_path, notice: 'Protagonist was successfully updated.' }
        format.json { render :show, status: :ok, location: @protagonist }
      else
        format.html { render :edit }
        format.json { render json: @protagonist.errors, status: :unprocessable_entity }
         end
    end
  end

  # DELETE /protagonists/1
  # DELETE /protagonists/1.json
  def destroy
    @protagonist = set_protagonist
    authorize @protagonist
    @protagonist.avatar.purge
    @protagonist.destroy
    respond_to do |format|
      format.html { redirect_to protagonists_url, notice: 'Protagonist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_protagonist
       Protagonist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def protagonist_params
      params.require(:protagonist).permit(:profession, :department, :university, :edifice, :homeAddress, :workAddress, :homePhone, :workPhone,:avatar, :email, :name, :lastName, :password, :password_confirmation)
    end

end
