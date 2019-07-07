class AppointmentsController < ApplicationController

    def show
        @appt = Appointment.find(params[:id])
        @patient = @appt.patient
        @doctor = @appt.doctor
        @time = @appt.appointment_datetime.strftime("%B %d, %Y at %H:%M")
        render :show
    end

    def appointment_params
        params.require(:appointment).permit(:doctor_id, :patient_id, :appointment_datetime)
    end

end