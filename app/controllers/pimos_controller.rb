class PimosController < ApplicationController
  before_action :set_pimo, only: [:show, :edit, :update, :destroy]

  # GET /pimos
  # GET /pimos.json
  def index
    @pimos = Pimo.all
  end

  # GET /pimos/1
  # GET /pimos/1.json
  def show
  end

  # GET /pimos/new
  def new
    @pimo = Pimo.new
  end

  # GET /pimos/1/edit
  def edit
  end

  # POST /pimos
  # POST /pimos.json
  def create
    @pimo = Pimo.new(pimo_params)

    respond_to do |format|
      if @pimo.save
        format.html { redirect_to @pimo, notice: 'Pimo was successfully created.' }
        format.json { render :show, status: :created, location: @pimo }
      else
        format.html { render :new }
        format.json { render json: @pimo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pimos/1
  # PATCH/PUT /pimos/1.json
  def update
    respond_to do |format|
      if @pimo.update(pimo_params)
        format.html { redirect_to @pimo, notice: 'Pimo was successfully updated.' }
        format.json { render :show, status: :ok, location: @pimo }
      else
        format.html { render :edit }
        format.json { render json: @pimo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pimos/1
  # DELETE /pimos/1.json
  def destroy
    @pimo.destroy
    respond_to do |format|
      format.html { redirect_to pimos_url, notice: 'Pimo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pimo
      @pimo = Pimo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pimo_params
      params.require(:pimo).permit(:area)
    end
end
