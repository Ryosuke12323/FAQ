class QasController < ApplicationController
  def index
    @qas = Qa.all
    @categories = Category.all
  end

  def new
    @qa = Qa.new
    @categories = {}
    Category.all.each do |category|
      @categories[category.name.to_sym] = category.id
    end
  end

  def create
    Qa.create(qa_params)
    redirect_to :root
  end

  def delete_confirm
    @qa = Qa.find(params[:id])
  end

  def destroy
    qa = Qa.find(params[:id])
    qa.destroy
    redirect_to :root
  end

  def edit
    @qa = Qa.find(params[:id])
    @categories = {}
    Category.all.each do |category|
      @categories[category.name.to_sym] = category.id
    end
  end

  def update
    qa = Qa.find(params[:id])
    qa.update(qa_params)
    redirect_to :root
  end

  private
  def qa_params
    params.require(:qa).permit(:question, :answer, :category_id)
  end
end
