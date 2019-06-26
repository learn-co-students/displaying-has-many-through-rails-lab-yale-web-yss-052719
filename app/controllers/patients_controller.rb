class PatientsController < ApplicationController 

    def new 
        @patient = Patient.new
    end

    def index
        @patients = Patient.all
    end

    def show
        @patient = Patient.find(params[:id])
    end

    private

    def patient_params(*args)
        params.require(:patient).permit(*args)
    end

end