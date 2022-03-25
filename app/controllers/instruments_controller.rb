class InstrumentsController < ApplicationController
  before_action :set_instrument, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]

  # GET /instruments or /instruments.json
  def index
    @instruments = Instrument.all.order('created_at desc')
  end

  # GET /instruments/1 or /instruments/1.json
  def show; end

  # GET /instruments/new
  def new
    @instrument = current_user.instruments.build
  end

  # GET /instruments/1/edit
  def edit; end

  # POST /instruments or /instruments.json
  def create
    @instrument = current_user.instruments.build(instrument_params)

    respond_to do |format|
      if @instrument.save
        format.html { redirect_to instrument_url(@instrument), notice: 'Instrument was successfully created.' }
        format.json { render :show, status: :created, location: @instrument }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instruments/1 or /instruments/1.json
  def update
    respond_to do |format|
      if @instrument.update(instrument_params)
        format.html { redirect_to instrument_url(@instrument), notice: 'Instrument was successfully updated.' }
        format.json { render :show, status: :ok, location: @instrument }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instruments/1 or /instruments/1.json
  def destroy
    @instrument.destroy

    respond_to do |format|
      format.html { redirect_to instruments_url, notice: 'Instrument was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_instrument
    @instrument = Instrument.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def instrument_params
    params.require(:instrument).permit(:brand, :model, :description, :condition, :finish, :title, :price, :image)
  end
end
