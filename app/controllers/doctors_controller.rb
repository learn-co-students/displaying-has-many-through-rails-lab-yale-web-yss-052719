class DoctorsController < ApplicationController
    def show
        @doctor.find(params[:id])
    end

    def index
        @doctors = Doctor.all
    end
end