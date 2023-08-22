module Api
  class StudentsController < ApiController
    before_action :student_find, only: %i[show update]

    def show
      render json: @student, status: :ok
    end

    def update
      if @student.update(update_student_params)
        render json: @student
      else
        render json: @student.errors, status: :unprocessable_entity
      end
    end

    private
      def update_student_params
        params.require(:student).permit(:password)
      end

      def student_find
        @student = Student.find(params[:id])
      end
  end
end
