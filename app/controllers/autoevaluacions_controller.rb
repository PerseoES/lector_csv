class AutoevaluacionsController < ApplicationController
  def index
    @autoevaluaciones = Autoevaluacion.all
  end
end
