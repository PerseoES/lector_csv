class StudentsController < ApplicationController
  before_action :student_find, only: %i[show edit update destroy]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
  end

  def create
    @student = Student.create(student_params)
    if @student.save
      redirect_to students_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to students_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user_delete = DeletedUser.create(id: @student.id, ci: @student.ci, password: '123456', first_name: @student.first_name, last_name: @student.last_name, email: @student.email, tanda: @student.tanda, orientation: @student.orientation, last_id: @student.id)
    @student.reports.each do |s|
      @reports_delete = DeletedReport.create(deleted_user_id: s.student_id ,date: s.date, pregunta_martes: s.pregunta_martes, sub_pregunta_martes: s.sub_pregunta_martes, pregunta_miercoles: s.pregunta_miercoles, sub_pregunta_miercoles: s.sub_pregunta_miercoles, pregunta_jueves: s.pregunta_jueves, sub_pregunta_jueves: s.sub_pregunta_jueves, feedback: s.feedback, punctuation: s.punctuation)
    end
    if @user_delete.save
      @student.destroy
      redirect_to students_path
    end
  end

  private
    def student_params
      params.require(:student).permit(:ci, :password, :first_name, :last_name, :email, :tanda, :orientation)
    end

    def student_find
      @student = Student.find(params[:id])
    end
end
