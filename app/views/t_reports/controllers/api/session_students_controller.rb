module Api
  class SessionStudentsController < ApiController
    skip_before_action :authorized, only: [:create]
    def create
      @student = Student.find_by(ci: params[:ci])
      if @student && @student.authenticate(params[:password])
        session[:student_id] = @student.id
        render json: 'si'
      else
        render json: 'no'
      end
    end

    def destroy
      session.delete(:student_id)
      render json: 'fuera'
    end
  end
end
