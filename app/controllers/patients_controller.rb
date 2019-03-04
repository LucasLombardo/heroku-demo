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

  # POST /patients
  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      render json: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  # PATCH /patients/:id
  def update
    @patient = Patient.find(params[:id])

    if @patient.update(patient_params)
      render json: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  # permitted parameters
  def patient_params
    params.require(:patient).permit(:first_name,
                                    :last_name,
                                    :born_on,
                                    :diagnosis)
  end
end
