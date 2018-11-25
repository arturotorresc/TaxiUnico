class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy,
                                  :end_trip, :accept_trip]

  # GET /trips
  # GET /trips.json
  def index
    if current_client
      @trips = current_client.trips.where(status: :completed).find_each
    elsif current_driver
      @trips = current_driver.trips.where(status: :completed).find_each
    end
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
    @trip.build_survey
  end

  # GET /trips/new
  def new
    @trip = Trip.new
  end

  # GET /trips/1/edit
  def edit
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)

    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip }
        format.json { render :show, status: :created, location: @trip }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to trips_url }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url }
      format.json { head :no_content }
    end
  end

  def find_trips
    # Only allows drivers and admins to see this page.
    if current_client
      redirect_to current_client
    end
    # Get all trips that have no driver and its origin are from where the driver is located.
    @trips = Trip.where(status: :pending).find_each
  end

  def accept_trip
    @trip.update_attribute(:driver_id, params[:driver_id])
    @trip.update_attribute(:status, params[:status])

    redirect_to find_trips_path
  end

  def end_trip
    @trip.update(trip_params)

    if current_driver
      redirect_to find_trips_path
    else
      redirect_to new_trip_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:origin, :destiny, :datetime, :driver_id, :client_id, :rate, :duration, :status,
                                    survey_attributes: [:id, :comment, :client_rating, :driver_rating])
    end
end
