class AttendancesController < ApplicationController
  def index
    attendances = Attendance.all
    render json: attendances
  end

  def show
    attendance = Attendance.find(params[:id])
    render json: attendance
  end

  def create
    attendance = Attendance.new(attendance_params)
    if attendance.save
      render json: attendance, status: :created
    else
      render json: attendance.errors, status: :unprocessable_entity
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(:member_id, :session_id, :attended_at)
  end
end
