class TextsController < ApplicationController

  def index
    @texts = Text.includes(:user)
  end

  def new
    @text = Text.new
  end

  def create
    Text.create(text_params)
    redirect_to root_path
  end

  def show
    @text = Text.find(params[:id])
  end

  def update
    text = Text.find(params[:id])
    text.update(text_params)
    redirect_to text_path(text.id)
  end

  def destroy
    text = Text.find(params[:id])
    text.destroy
    redirect_to root_path
  end

  private
  def text_params
    params.require(:text).permit(:title, :content, :image).merge(user_id: current_user.id)
  end
end