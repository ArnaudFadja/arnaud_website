class ThesesController < ApplicationController
  before_action :set_thesis, only: %i[ show edit update destroy ]

  # GET /theses or /theses.json
  def index
    @theses = Thesis.all
  end

  # GET /theses/1 or /theses/1.json
  def show
  end

  # GET /theses/new
  def new
    @thesis = Thesis.new
  end

  # GET /theses/1/edit
  def edit
  end

  # POST /theses or /theses.json
  def create
    @thesis = Thesis.new(thesis_params)

    respond_to do |format|
      if @thesis.save
        format.html { redirect_to thesis_url(@thesis), notice: "Thesis was successfully created." }
        format.json { render :show, status: :created, location: @thesis }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @thesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theses/1 or /theses/1.json
  def update
    respond_to do |format|
      if @thesis.update(thesis_params)
        format.html { redirect_to thesis_url(@thesis), notice: "Thesis was successfully updated." }
        format.json { render :show, status: :ok, location: @thesis }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @thesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theses/1 or /theses/1.json
  def destroy
    @thesis.destroy

    respond_to do |format|
      format.html { redirect_to theses_url, notice: "Thesis was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thesis
      @thesis = Thesis.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def thesis_params
      params.require(:thesis).permit(:title, :description, :year)
    end
end
