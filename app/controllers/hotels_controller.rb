class HotelsController < ApplicationController
  before_action :set_hotel, only: [:show, :edit, :update, :destroy ]

  # GET /hotels
  # GET /hotels.json
  def index
    @hotels = Hotel.all
  end

  # GET /hotels/1
  # GET /hotels/1.json
  def show
  end

  # GET /hotels/new
  def new
   @partner = Partner.find(params[:partner_id])
   @hotel = @partner.hotels.build()
  end

  # GET /hotels/1/edit
  def edit
    #@partner = Partner.find(params[:partner_id])
    @hotel = Hotel.find(params[:id])
  end

  # POST /hotels
  # POST /hotels.json
  def create
    @partner = Partner.find(params[:partner_id])
    @hotel = @partner.hotels.new(hotel_params)

    respond_to do |format|
      if @hotel.save
        format.html { redirect_to partner_path(@partner), notice: 'Hotel was successfully created.' }
        format.json { render :show, status: :created, location: @hotel }
      else
        format.html { render :new }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotels/1
  # PATCH/PUT /hotels/1.json
  def update
    #@partner = Partner.find(params[:partner_id])
    #@hotel = @partner.hotels.find(params[:id])
    @hotel = Hotel.find(params[:id])
    respond_to do |format|
      if @hotel.update(hotel_params)
        format.html { redirect_to @hotel, notice: 'Hotel was successfully updated.' }
        format.json { render :show, status: :ok, location: @hotel }
      else
        format.html { render :edit }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotels/1
  # DELETE /hotels/1.json
  def destroy
    @hotel.destroy
    respond_to do |format|
      format.html { redirect_to partners_path, notice: 'Hotel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotel
      @hotel = Hotel.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def hotel_params
      params.require(:hotel).permit(:name, :address, :email, :phone, :partner_id)
    end
end
