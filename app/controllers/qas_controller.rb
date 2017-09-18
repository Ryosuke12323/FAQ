class QasController < ApplicationController
  def index
    @qas = Qa.all
  end

  def new
    @qa = Qa.new
  end

  def create
    Qa.create(qa_params)
    redirect_to :root
  end

  def destroy
  end

  def edit
    @qa = Qa.find(params[:id])
  end

  def update
    qa = Qa.find(params[:id])
    qa.update(qa_params)
    redirect_to :root
  end

  private
  def qa_params
    params.require(:qa).permit(:question, :answer)
  end
end
