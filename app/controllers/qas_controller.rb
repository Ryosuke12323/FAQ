class QasController < ApplicationController
  def index
    @qas = Qa.all
  end

  def new
    @qa = Qa.new
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
