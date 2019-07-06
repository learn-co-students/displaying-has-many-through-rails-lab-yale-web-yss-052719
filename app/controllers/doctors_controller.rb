class DoctorsController < ApplicationController
    def show
        @doctor= Doctor.find(params[:id])
        render '/doctor/show'
    end

    def index
        @doctors = Doctor.all
    end
end