module Api
  class ApiController < ActionController::Base
    skip_before_action :verify_authenticity_token

    before_action :authorized
    helper_method :current_student
    helper_method :student_logged_in?

    def current_student
      Student.find_by(id: session[:student_id])
    end

    def student_logged_in?
      !current_student.nil?
    end

    def authorized
      redirect_to '/api/student_login' unless student_logged_in?
    end

  end
end
