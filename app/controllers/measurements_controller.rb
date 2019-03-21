class MeasurementsController < ApplicationController
  def new
    @kid = Kid.find(params[:id])
    @measurement = Measurement.new
  end

  def create
    @kid = Kid.find(params[:id])
    @measurement = Measurement.new(measurement_params)
    @measurement.kid = @kid
    if @measurement.save
      respond_to do |format|
        format.html { redirect_to chart_kid_path(@kid) }
        format.js
      end
    else
      respond_to do |format|
        format.js
      end
    end
  end

  private

  def measurement_params
    params.require(:measurement).permit(:type, :value, :measured_at)
  end
end
