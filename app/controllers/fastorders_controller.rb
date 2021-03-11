class FastordersController < ApplicationController
  before_action :set_fastorder, only: %i[show edit update destroy]

  # GET /fastorders or /fastorders.json
  def index
    @fastorders = Fastorder.all
  end

  # GET /fastorders/1 or /fastorders/1.json
  def show
  end

  # GET /fastorders/new
  def new
    @product_name = params[:name]
    @fastorder = Fastorder.new
  end

  # GET /fastorders/1/edit
  def edit
  end

  # POST /fastorders or /fastorders.json
  def create
    @fastorder = Fastorder.new(fastorder_params)

    respond_to do |format|
      if @fastorder.save
        format.html { redirect_to @fastorder, notice: "Thank you for shopping with us!" }
        format.json { render :show, status: :created, location: @fastorder }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fastorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fastorders/1 or /fastorders/1.json
  def update
    respond_to do |format|
      if @fastorder.update(fastorder_params)
        format.html { redirect_to @fastorder, notice: "Fastorder was successfully updated." }
        format.json { render :show, status: :ok, location: @fastorder }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fastorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fastorders/1 or /fastorders/1.json
  def destroy
    @fastorder.destroy
    respond_to do |format|
      format.html { redirect_to fastorders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fastorder
      @fastorder = Fastorder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fastorder_params
      params.require(:fastorder).permit(:product_name, :quantity, :address, :phone, :zip_code, :date)
    end
end
