class PatientsController < ApplicationController

  # GET /patients
  def index
    @patients = Patient.all

    render json: @patients
  end

  # GET /patients/:id
  def show
    @patient = Patient.find(params[:id])

    render json: @patient
  end
end
