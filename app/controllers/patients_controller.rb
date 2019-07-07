class PatientsController < ApplicationController 

    def index
        @patients = Patient.all
        render :index
    end

    def show
        @patient = Patient.find(params[:id])
        render :show
    end

    private

    def patient_params
        params.require(:patient).permit(:name, :age, appointments:[])
    end
end