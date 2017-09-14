class QasController < ApplicationController
  def index
    @qas = Qa.all
  end
end
