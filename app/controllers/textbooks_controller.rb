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

  private
  def textbook_params
    params.require(:textbook).permit(:name, :item, :content)
  end

end
