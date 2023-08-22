class ApplicationController < ActionController::Base
  before_action :reports_all, only: %i[registros_mes porcentaje_registros_mes registro1_mes registro2_mes promedio_mes inasistencias registros1 registros2 all_regisrtos promedio_puntuacion]

  before_action :authorized
  helper_method :current_admin
  helper_method :logged_in?
  helper_method :student_full_name
  helper_method :admin_fullname

  helper_method :mes_actual
  helper_method :jueves_mes
  helper_method :dias_mes
  helper_method :primer_dia

  helper_method :registros_mes
  helper_method :porcentaje_registros_mes
  helper_method :registro1_mes
  helper_method :registro2_mes
  helper_method :promedio_mes
  helper_method :inasistencias

  helper_method :registros1
  helper_method :registros2
  helper_method :all_regisrtos
  helper_method :promedio_puntuacion

  def admin_fullname(id)
    a = Admin.find_by(id: id)
    return a.first_name + ' ' + a.last_name
  end

  def current_admin
    Admin.find_by(id: session[:admin_id])
  end

  def logged_in?
    !current_admin.nil?
  end

  def authorized
    redirect_to '/login' unless logged_in?
  end

  def student_full_name(id)
    s = Student.find_by(id: id)
    return s.first_name + ' ' + s.last_name
  end

  def mes_actual
    return Date.today.month
  end

  def dias_mes
    return Time.days_in_month(mes_actual, Date.today.year)
  end

  def jueves_mes
    # primer_dia = Date.today.beginning_of_month.strftime("%A")
    primer_dia = Date.today.beginning_of_month
    cant = 0
    pos = 0

    while pos < dias_mes
      v = primer_dia + pos
      if v.wday == 4
        cant = cant + 1
      end
      pos = pos + 1
    end
    return cant
  end

  def primer_dia
    # primer_dia = Date.today.beginning_of_month.strftime("%A")
    primer_dia = Date.today.beginning_of_month
    while primer_dia.wday != 4
      primer_dia = primer_dia + 1
    end
    return primer_dia
  end
#############   MES ACTUAL   #############

  def registros_mes(id)
    reg = 0
    reports_all.each do |r|
      if r.student_id == id && r.date.month == mes_actual
        reg = reg + 1
      end
    end
    return reg
  end

  def porcentaje_registros_mes(id)
    reg = 0
    reports_all.each do |r|
      if r.student_id == id && r.date.month == mes_actual
        reg = reg + 1
      end
    end
    return "#{reg} de #{jueves_mes}"
  end

  def registro1_mes(id)
    cant = 0
    reports_all.each do |r|
      if r.date.month == mes_actual && r.student_id == id && r.punctuation == 1
        cant = cant + 1
      end
    end
    return cant
  end

  def registro2_mes(id)
    cant = 0
    reports_all.each do |r|
      if r.date.month == mes_actual && r.student_id == id && r.punctuation == 2
        cant = cant + 1
      end
    end
    return cant
  end

  def promedio_mes(id)
    puntos = 0
    total = 0
    reports_all.each do |r|
      if r.student_id == id && r.date.month == mes_actual
        puntos = puntos + r.punctuation
        total = total + 1
      end
    end
    return (puntos.to_f / total.to_f).round(2)
  end

  def inasistencias(id)
    total = 0
    reports_all.each do |r|
      if r.date.month == mes_actual && r.student_id == id
        if r.pregunta_martes == 'no' || r.pregunta_miercoles == 'no' || r.pregunta_jueves == 'no'
          total = total + 1
        end
      end
    end
    return total
  end

#############   GENERAL   #############

  def all_regisrtos(id)
    total = 0
    reports_all.each do |r|
      if r.student_id == id
        total = total + 1
      end
    end
    return total
  end

  def registros1(id)
    reg = 0
    reports_all.each do |r|
      if r.student_id == id && r.punctuation == 1
        reg = reg + 1
      end
    end
    return reg
  end

  def registros2(id)
    reg = 0
    reports_all.each do |r|
      if r.student_id == id && r.punctuation == 2
        reg = reg + 1
      end
    end
    return reg
  end

  def promedio_puntuacion(id)
    puntos = 0
    total = 0
    reports_all.each do |r|
      if r.student_id == id
        puntos = puntos + r.punctuation
        total = total + 1
      end
    end
    return (puntos.to_f / total.to_f).round(2)
  end

  private
    def reports_all
      reports = Report.all
    end
end
