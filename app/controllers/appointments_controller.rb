class AppointmentsController < ApplicationController 

    def new 
        @appointment = Appointment.new
    end

    def index
        @appointments = Appointment.all
    end

    def show
        @appointment = Appointment.find(params[:id])
    end

    private

    def appointment_params(*args)
        params.require(:appointment).permit(*args)
    end

end