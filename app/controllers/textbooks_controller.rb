class TextbooksController < ApplicationController
  def index
    @textbooks = Textbook.all.order(created_at: :desc)
  end

  def new
    @textbook = Textbook.new
  end

  def create
    @textbook = Textbook.new(textbook_params)
    if @textbook.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @textbook = Textbook.find(params[:id])
  end

  def edit
    @textbook = Textbook.find(params[:id])
  end

  def update
    @textbook = Textbook.find(params[:id])
    if @textbook.update(textbook_params)
      redirect_to textbook_path(@textbook.id)
    else
      render :edit
    end
  end

  def destroy
    @textbook = Textbook.find(params[:id])
    @textbook.destroy
    redirect_to root_path
  end

  private
  def textbook_params
    params.require(:textbook).permit(:name, :item, :content)
  end

end
